var express = require('express');

module.exports = function (app) {
  // All of our routes will console log a status
  app.use(function (req, res, next) {
    console.log('==========================================');
    console.log(req.method + ': ' + req.url);
    next();
  });

};