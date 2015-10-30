var express = require('express');
var router = express.Router();
var db = require(__dirname + '/../models/index');

// On routes that end in /product
router.route('/')

  // Gets all products
  .get(function (req, res) {

    db.Product.findAll().then(function (products) {
      // Ideally, this sends an html response via res.sendFile()
      res.json(products);
    });

  })

  // Ideally post will create a product
  .post(function (req, res) {
    db.Product.findOrCreate({
      where: {
        name: req.body.name,
        pictureUrl: req.body.pictureUrl,
        description: req.body.description,
        manufacturer: req.body.manufacturer,
        category: req.body.category,
        type: req.body.type
      }
    }).spread(function (product, created) {
      if (!created) {
        console.log('Product already exists and was not created');
      } else {
        console.log('Product created!');
      }
      res.json(product);
    });
    
  });

// On routes that end in /products
// router.route('/products/:location/:searchTerm/:category')

  // Ideally get will retrieve all products given search parameters in url
  // .get(function (req, res) {

  //   var search = {
  //     'searchParams' :{
  //       'location': req.params.location,
  //       'searchTerm': req.params.searchTerm,
  //       'category': req.params.category
  //     }
  //   }

  //   res.json(search);

  //   // db.Product.findAll().then(function (products) {
  //   //   // Ideally, this sends an html response via res.sendFile()
  //   //   res.json(products);
  //   // });
  // });

module.exports = router;