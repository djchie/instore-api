#!/usr/bin/env node

// Run this inside the container

require('babel-core/register')({
  plugins: ['transform-async-to-generator'],
});

require("babel-polyfill");

const fs = require('fs');

const database = require('../server/database').default;
database.sync({ force: true }).then(() => {
  const Product = database.models.Product;
  const Store = database.models.Store;
  const Inventory = database.models.Inventory;
  const User = database.models.Product;

  fs.readFile('./stores-data.json', 'utf-8', (error, data) => {
    if (error) {
      console.log('There\'s a fucking error');
      console.log(error);
    }
  }
}