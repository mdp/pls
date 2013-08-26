parse = (pls) ->
  obj = {}
  tracks = []
  lines = pls.split '\n'
  for line in lines
    match = line.match /([a-zA-Z0-9]+)\=(.+)\r?$/
    if match and match.length >= 2
      obj[match[1].toLowerCase()] = match[2]
  numberOfEntries = parseInt(obj.numberofentries, 10) or 0
  for i in [1..numberOfEntries]
    tracks.push
      uri: obj["file#{i}"]
      title: obj["title#{i}"]
      length: parseInt obj["length#{i}"], 10
  tracks

if module? and module.exports?
  module.exports = parse
else if window? and window is @
  window.PLS =
    parse: parse

