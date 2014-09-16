version = "0.1-1"
package = "chronos"

description = {
	homepage = "https://github.com/ldrumm/chronos",
	license = "MIT/X11",
	detailed = "Wrappers around a number of platform-specific monotonic timers.\
    The highest resolution timer on each platform is used.  This is typically clock_gettime, gettimeofday, QueryPerformanceCounter, or similar depending on the capabilities of the host.\
    On a modern Linux system, nanosecond precision is common.\
    ",
	summary = "High resolution monotonic timers",
}

dependencies = {
	"lua >= 5.1",
}

build = {

	modules = {
		chronos = "src/chronos.c",
	},
	type = "builtin",
}

source = {
	tag = "v0.1-1",
	url = "https://github.com/ldrumm/chronos/archive/0.1-1.zip",
	dir = "chronos-0.1-1",
}
