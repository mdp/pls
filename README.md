# PLS
Parse PLS files.

## Usage
### Node
``` javascript
var pls = require('pls');

var tracks = pls.parse(somePLSText);
console.log(tracks[0].uri) // => "https://stream.mp3.com:8080"
```

### Browser
```javascript
var tracks = window.PLS.parse(somePLSText);
```

