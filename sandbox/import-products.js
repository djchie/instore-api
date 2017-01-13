#!/usr/bin/env node
'use strict'

// Run this inside the container

require('babel-core/register')({
  plugins: ['transform-async-to-generator'],
});

require("babel-polyfill");

const fs = require('fs');

const database = require('../server/database').default;
const Product = database.models.Product;

Product.sync({ force: true }).then(() => {

  fs.readFile('./product-data.json', 'utf-8', (error, data) => {
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

    // model and upc?
    for (let product of products) {
      Product.create({
        name: product.name,
        imageUrl: product.images[0],
        description: `This is a ${product.name}.`,
        brand: product.brand,
        category: product.category,
        type: 'Shoes',
        marketPrice: product.price,
        size: product.size,
        color: product.color,
      });
    }
  });
});
