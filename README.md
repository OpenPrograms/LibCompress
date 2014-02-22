#LibCompress
LibCompress is compression library written in Lua. It has been modified for compatibility in OpenComputers.
Original library taken from: http://www.wowace.com/addons/libcompress/
##Usage
```
local LibCompress = require('LibCompress')
local myData = '...'

local compressed = LibCompress:Compress(myData)
local decompressed = LibCompress:Decompress(compressed)
```