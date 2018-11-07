version = "0.2-4"

source = {
	dir = "chronos-0.2-4",
	tag = "v0.2-4",
	url = "https://github.com/ldrumm/chronos/archive/v0.2-4.zip",
}

dependencies = {
	"lua >= 5.1",
}

description = {
	license = "MIT/X11",
	homepage = "https://github.com/ldrumm/chronos",
	detailed = "        Wrappers around a number of platform-specific monotonic timers. The\
        highest resolution timer on each platform is used.  This is typically\
        clock_gettime, gettimeofday, QueryPerformanceCounter, or similar\
        depending on the capabilities of the host. On a modern Linux system,\
        nanosecond precision is achievable.\
        ",
	summary = "High resolution monotonic timers",
}
package = "chronos"

build = {

	platforms = {

		macosx = {

			modules = {
				chronos = "src/chronos.c",
			},
		},

		unix = {

			modules = {

				chronos = {
					sources = "src/chronos.c",

					libraries = {
						"rt",
					},
				},
			},
		},
	},

	modules = {
		chronos = "src/chronos.c",
	},
	type = "builtin",
}
