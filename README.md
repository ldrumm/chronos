chronos
=======

High resolution monotonic timers for Lua


```
require("chronos")

start = os.nanotime()
os.execute("sleep 1")
stop = os.nanotime()

print(string.format("sleep took %s seconds", stop - start))
>>sleep took 1.0042656199948 seconds
```
