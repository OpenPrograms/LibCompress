local LibCompress = require('LibCompress')
local rawData = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam turpis leo, tempus commodo turpis at, vehicula congue eros. Maecenas non tortor pulvinar, consequat lorem sit amet, ornare dui. Ut consectetur volutpat nisl eget mollis. Sed congue ipsum at vestibulum facilisis. Suspendisse vehicula justo in porta blandit. In pellentesque velit vel massa congue, et viverra lectus convallis. Duis hendrerit nisi nibh, eu ullamcorper mi lacinia quis. Donec pulvinar iaculis sem. Donec tempus pellentesque purus sed mollis. Fusce porta urna velit, eu sagittis justo euismod eu. Pellentesque ornare, massa ac consectetur aliquam, nunc lectus sollicitudin lacus, ut suscipit nisl nunc quis diam.'

print('Compressing...')
local compressedData = LibCompress:Compress(rawData)
print('Decompressing...')
local decompressedData = LibCompress:Decompress(compressedData)
if rawData == decompressedData then
	print('Test succeeded: Decompressed data matches original')
else
	error('Test failed: Decompressed data does NOT match original')
end
print('Saved ' .. #rawData - #compressedData .. ' bytes')