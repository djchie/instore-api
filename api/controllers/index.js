var express = require('express');
var router = express.Router();

router.use('/products', require('./products'));
router.use('/stores', require('./stores'));
router.use('/inventories', require('./inventories'));

// Ideally, this route sends the index.html
router.get('/', function (req, res) {
  // res.sendFile(__dirname + '/public/views/index.html');
  res.json({
    message: 'Welcome to InStore!'
  });
});

module.exports = router;