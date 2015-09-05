#!/usr/bin/env lua
print("enter a new version:")
version = string.match(io.read(), "v?([%d]+.[%d]+-[%d]+)")
assert(version ~= nil)

rockspec = {
    package = "chronos",
    version = version,
    source = {
        url = "https://github.com/ldrumm/chronos/archive/v" .. version .. ".zip",
        dir= "chronos-" .. version,
        tag = "v" .. version
    },
    description = {
        summary = "High resolution monotonic timers",
        detailed = [[Wrappers around a number of platform-specific monotonic timers.
    The highest resolution timer on each platform is used.  This is typically clock_gettime, gettimeofday, QueryPerformanceCounter, or similar depending on the capabilities of the host.
    On a modern Linux system, nanosecond precision is common.
    ]],
        homepage = "https://github.com/ldrumm/chronos",
        license = "MIT/X11"
    },

    dependencies = {
        "lua >= 5.1"
    },

    build = {
        type = "builtin",
        modules = {
            chronos = "src/chronos.c",
        }
    }
}
do
    local function writerockspec(file, rockspec, indent)
        local comma = indent and "," or ""
        indent = indent or 0

        for k, v in pairs(rockspec) do
            if type(v) == "table" then
                file:write("\n")
                file:write(string.rep("\t", indent) .. string.format("%s = {\n", k))
                writerockspec(file, v, indent + 1)
                file:write(string.rep("\t", indent) .. string.format("}%s\n", comma))
            else
                if(type(k) == "string") then
                    file:write(string.rep("\t", indent) .. string.format("%s = %q%s\n", k, v, comma))
                elseif(type(k) == "number") then
                    file:write(string.rep("\t", indent) .. string.format("%q%s\n", v, comma))
                else
                    file:write("rockspec can't contain key of type:" .. type(k))
                end
            end
        end
    end

    local update_git
    while update_git == nil do
        print(string.format("Do 'git add . && commit -a && git tag v%s'?[yes/NO]", version))
        update_git = io.read() == "yes"
    end


    local out = io.open(string.format("rockspecs/%s-%s.rockspec", rockspec.package, version ), "w")
    writerockspec(out, rockspec)
    out:flush()
    if update_git then
        os.execute(string.format('git add . && git commit -a && git tag v%s', version))
    end
end
