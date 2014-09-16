
description = {
	detailed = "Wrappers around a number of platform-specific monotonic timers.\
    The highest resolution timer on each platform is used.  This is typically clock_gettime, gettimeofday, QueryPerformanceCounter, or similar depending on the capabilities of the host.\
    On a modern Linux system, nanosecond precision is common.\
    ",
	homepage = "https://github.com/ldrumm/chronos",
	summary = "High resolution monotonic timers",
	license = "MIT/X11",
}
version = "0.1-4"

source = {
	url = "https://github.com/ldrumm/chronos/archive/v0.1-4.zip",
	tag = "v0.1-4",
	dir = "chronos-0.1-4",
}

build = {
	type = "builtin",

	modules = {
		chronos = "src/chronos.c",
	},
}
package = "chronos"

dependencies = {
	"lua >= 5.1",
}
