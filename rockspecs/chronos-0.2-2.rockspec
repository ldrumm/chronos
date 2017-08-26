version = "0.2-2"
dependencies = {
    "lua >= 5.1",
}
package = "chronos"
description = {
    detailed = "Wrappers around a number of platform-specific monotonic\
        timers. The highest resolution timer on each platform is used. This is\
        typically `clock_gettime`, `gettimeofday`, `QueryPerformanceCounter`,\
        or similar depending on the capabilities of the host. On a modern Linux\
        system, nanosecond precision is achievable.\
    ",
    summary = "High resolution monotonic timers",
    homepage = "https://github.com/ldrumm/chronos",
    license = "MIT/X11",
}
build = {
    type = "builtin",
    platforms = {
        unix = {
            modules = {
                chronos = {
                    libraries = {
                        "rt",
                    },
                    sources = "src/chronos.c",
                },
            },
        },
    },
    modules = {
        chronos = "src/chronos.c",
    },
}
source = {
    tag = "v0.2-2",
    dir = "chronos-0.2-2",
    url = "https://github.com/ldrumm/chronos/archive/v0.2-2.zip",
}
