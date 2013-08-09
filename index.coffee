exports.parse = (pls) ->
  obj = {}
  tracks = []
  lines = pls.split("\n")
  for line in lines
    match = line.match(/([a-zA-Z0-9]+)\=(.+)\r?$/)
    if match && match.length >= 2
      obj[match[1].toLowerCase()] = match[2]
  numberOfEntries = parseInt(obj.numberofentries,10) || 0
  for i in [1..numberOfEntries] by 1
    track = new Track(obj["file#{i}"], obj["title#{i}"], parseInt(obj["length#{i}"],10))
    tracks.push track
  tracks

Track = (@uri, @title, @length) ->
  return this
