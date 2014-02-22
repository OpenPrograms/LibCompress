#LibCompress

##Usage
```
local LibCompress = require('LibCompress')
local myData = '...'

local compressed = LibCompress:Compress(myData)
local decompressed = LibCompress:Decompress(compressed)
```