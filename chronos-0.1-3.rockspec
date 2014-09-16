package = "chronos"

build = {

	modules = {
		chronos = "src/chronos.c",
	},
	type = "builtin",
}

source = {
	url = "https://github.com/ldrumm/chronos/archive/0.1-3.zip",
	dir = "chronos-0.1-3",
	tag = "v0.1-3",
}

description = {
	license = "MIT/X11",
	homepage = "https://github.com/ldrumm/chronos",
	detailed = "Wrappers around a number of platform-specific monotonic timers.\
    The highest resolution timer on each platform is used.  This is typically clock_gettime, gettimeofday, QueryPerformanceCounter, or similar depending on the capabilities of the host.\
    On a modern Linux system, nanosecond precision is common.\
    ",
	summary = "High resolution monotonic timers",
}
version = "0.1-3"

dependencies = {
	"lua >= 5.1",
}
