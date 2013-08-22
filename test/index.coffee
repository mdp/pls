assert = require 'assert'
pls  = require '../index'
fs = require 'fs'
streamingPls = fs.readFileSync './test/fixtures/streaming.pls', 'utf-8'

tracks = pls.parse streamingPls
assert.equal tracks[1].uri, 'http://94.23.216.58:8000', 'Failed to find the correct file'
assert.equal tracks[1].length, -1, 'Wrong length'

dosPls = fs.readFileSync './test/fixtures/dos.pls', 'utf-8'
tracks = pls.parse dosPls
assert.equal tracks.length, 3, 'Failed to parse DOS-style newlines'

console.log 'Tests passing'

