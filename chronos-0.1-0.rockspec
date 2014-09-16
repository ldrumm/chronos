package = "chronos"
version = "0.1-0"
source = {
    url = "git://github.com/ldrumm/chronos.git",
    tag = "v0.1"
}

description = {
    summary = "High resolution monotonic timers",
    detailed = [[Wrappers around a number of platform-specific monotonic timers.
The highest resolution timer on each platform is used.  This is typically clock_gettime, gettimeofday, QueryPerformanceCounter, or similar depending on the capabilities of the host.
On a modern system Linux system, nanosecond precision is common.
]],
    homepage = "https://github.com/ldrumm/chronos",
    license = "MIT/X11"

}

dependencies = {
    "lua >= 5.1"
}

build = {
    type = "builtin",
    modules = {
        chronos = "src/chronos.c",
    }
}
