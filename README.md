chronos
=======

High resolution monotic timers for Lua


```
require("chronos")

start = os.nanotime()
for i = 0, 1e7 do end
stop = os.nanotime()

print(string.format("loop took %s seconds", stop - start))
>>loop took 0.00010180473327637 seconds
```
