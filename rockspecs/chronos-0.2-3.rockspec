package = "chronos"
version = "0.2-3"
source = {
   url = "https://github.com/ldrumm/chronos/archive/v0.2-3.zip",
   tag = "v0.2-3",
   dir = "chronos-0.2-3"
}
description = {
   summary = "High resolution monotonic timers",
   detailed = [[
Wrappers around a number of platform-specific monotonic
        timers. The highest resolution timer on each platform is used. This is
        typically `clock_gettime`, `gettimeofday`, `QueryPerformanceCounter`,
        or similar depending on the capabilities of the host. On a modern Linux
        system, nanosecond precision is achievable.
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
      chronos = "src/chronos.c"
   },
   platforms = {
      unix = {
         modules = {
            chronos = {
               libraries = {
                  "rt"
               },
               sources = "src/chronos.c"
            }
         }
      }
   }
}
