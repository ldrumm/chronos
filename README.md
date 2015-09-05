chronos
=======

High resolution monotonic timers for Lua


```Lua
do
    local chronos = require("chronos")


    local start = chronos.nanotime()
    os.execute("sleep 1")
    local stop = chronos.nanotime()

    print(("sleep took %s seconds"):format(stop - start))
end
>> sleep took 1.0042656199948 seconds
```
