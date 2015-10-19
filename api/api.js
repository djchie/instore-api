// BASIC SETUP
// =============================================================================

// Call the packages we need
var express = require('express');
var bodyParser = require('body-parser');
var db = require(__dirname + '/models/index');

// Sync the database models
db.sequelize.sync({
  // force: true
});

// Create an express app
var app = express();

app.use(express.static(__dirname + '/client'));
app.use('/bower_components',  express.static(__dirname + '/bower_components'));

// Configure the app to use bodyParser()
// This will let us get the data from post
app.use(bodyParser.urlencoded({
  extended: true
}));
app.use(bodyParser.json());

// Route middlewares for our API
require('./middlewares')(app);

// Route helpers for our API
require('./helpers')(app);

// Route controllers for our API
app.use(require('./controllers'));

module.exports = app;