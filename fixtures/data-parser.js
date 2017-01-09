'use strict'

const fs = require('fs');

fs.readFile('./nike-data.json', 'utf-8', (error, data) => {
  if (error) {
    console.log('There\'s a fucking error');
    console.log(error);
  }

  let parsed = JSON.parse(data);
  let products = [];

  for (let searchResult of parsed) {
    for (let productData of searchResult.results) {
      const product = {
        brand: productData.brand,
        created_at: productData.created_at,
        name: productData.name,
        images: ['http://placehold.it/350x150'],
        category: productData.category,
        updated_at: productData.updated_at,
        marketPrice: productData.price,
        size: productData.size,
        color: productData.color,
        model: productData.model || 'N/A',
        upc: productData.gtins[0] || 'N/A',
      };
      
      products.push(product);
    }
  }

  console.log(products.length);
});


// TODO:
// Read file and INSERT into pg database