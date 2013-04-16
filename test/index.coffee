assert = require 'assert'
pls  = require '../index'
fs = require 'fs'
streamingPls = fs.readFileSync('./test/fixtures/streaming.pls', 'utf-8')

tracks = pls.parse(streamingPls)
assert.equal tracks[1].uri, "http://94.23.216.58:8000", "Failed to find the correct file"
assert.equal tracks[1].length, -1, "Wrong length"

console.log "Tests passing"

