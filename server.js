var server = require('./api/api.js');

// Set our port
var port = process.env.PORT || 8080;

// START THE SERVER
// =============================================================================
server.listen(port, function() {
  console.log('Server is listening on ' + port);
});