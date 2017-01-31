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
const Store = database.models.Store;
const Inventory = database.models.Inventory;

Inventory.sync({ force: true }).then(() => {
  const maxStock = 50;
  const minPrice = 30;
  const maxPrice = 250;
  const decimal = [0.99, 0.49, 0.00];

  Product.findAll().then((products) => {
    Store.findAll().then((stores) => {
      const numOfProduct = products.length;
      const numOfStore = products.length;

      for (const store of stores) {
        // random numOfProduct of 10 - 100
        const numOfProductInStore = Math.floor((Math.random() * (90 + 1))) + 10;

        // array of product ids added
        const alreadyAddedProducts = [];

        // for i = 0 --> i < numOfProduct
        for (let i = 0; i < numOfProductInStore; i++) {
          // pick a random product (make sure it isn't already picked)
          const randomProductIndex = Math.floor(Math.random() * numOfProduct);

          if (alreadyAddedProducts.indexOf(randomProductIndex) === -1) {
            alreadyAddedProducts.push(randomProductIndex);
            // random stockCount of 0 - 50
            const stockCount = Math.floor((Math.random() * (maxStock + 1)));
            let price = Math.floor((Math.random() * (maxPrice - minPrice)) + minPrice);
            const decimalIndex = Math.floor(Math.random() * 3);
            price += decimal[decimalIndex];

            const productId = products[randomProductIndex].id;
            const storeId = store.id;

            // // create inventory with store, product, and stockCount
            Inventory.create({
              product_id: productId,
              store_id: storeId,
              stock_count: stockCount,
              price: price,
            }).then((inventory) => {
              console.log('Inventory created!');
            }).catch((error) => {
              console.log(error);
            });
          }
        }
      }
    });
  });
});

// Product.findOne({
//   where: {
//     id: productId,
//   }
// }).then((product) => {
//   console.log(product);
//   console.log(product.getInventories);
// });

// Store.findOne({
//   where: {
//     id: storeId,
//   }
// }).then((store) => {
//   console.log(store);
//   console.log(store.getInventories);
// });

// const productId = '7c189b6e-30be-487c-b616-ca64dc21e0f6';
// const storeId = '510adb69-907d-40fe-9388-60b6b5262f0d';
// const stockCount = 34;
// const price = 99.99;

// Inventory.create({
//   product_id: productId,
//   store_id: storeId,
//   stockCount: stockCount,
//   price: price,
// }).then((inventory) => {
//   console.log('Inventory created!');
// }).catch((error) => {
//   console.log(error);
// });

// console.log(Inventory);

// Inventory.findOne({
//   where: {
//     id: 'e6573ee2-5f2b-4800-b96b-3fd20880637f',
//   }
// }).then((inventory) => {
//   console.log(inventory.productId);
// })