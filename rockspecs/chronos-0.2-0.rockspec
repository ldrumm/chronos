package = "chronos"
version = "0.2-0"

build = {
	type = "builtin",

	modules = {
		chronos = "src/chronos.c",
	},
}

dependencies = {
	"lua >= 5.1",
}

description = {
	license = "MIT/X11",
	summary = "High resolution monotonic timers",
	detailed = "Wrappers around a number of platform-specific monotonic timers.\
    The highest resolution timer on each platform is used.  This is typically clock_gettime, gettimeofday, QueryPerformanceCounter, or similar depending on the capabilities of the host.\
    On a modern Linux system, nanosecond precision is common.\
    ",
	homepage = "https://github.com/ldrumm/chronos",
}

source = {
	tag = "v0.2-0",
	url = "https://github.com/ldrumm/chronos/archive/v0.2-0.zip",
	dir = "chronos-0.2-0",
}
