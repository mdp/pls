# PLS

I'm probably the only person in the world that still wants to parse PLS files.

## Usage

pls = require('pls');

tracks = pls.parse(SomePLSText);
console.log tracks[0].uri #=> "https://stream.mp3.com:8080"
