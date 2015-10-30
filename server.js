var server = require('./server/index.js');

// Set our port
var port = process.env.PORT || 3000;

// START THE SERVER
// =============================================================================
server.listen(port, function() {
  console.log('Server is listening on ' + port);
});