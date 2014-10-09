package = "chronos"
version = "0.1-5"

build = {

	modules = {
		chronos = "src/chronos.c",
	},
	type = "builtin",
}

dependencies = {
	"lua >= 5.1",
}

description = {
	summary = "High resolution monotonic timers",
	license = "MIT/X11",
	detailed = "Wrappers around a number of platform-specific monotonic timers.\
    The highest resolution timer on each platform is used.  This is typically clock_gettime, gettimeofday, QueryPerformanceCounter, or similar depending on the capabilities of the host.\
    On a modern Linux system, nanosecond precision is common.\
    ",
	homepage = "https://github.com/ldrumm/chronos",
}

source = {
	url = "https://github.com/ldrumm/chronos/archive/v0.1-5.zip",
	dir = "chronos-0.1-5",
	tag = "v0.1-5",
}
