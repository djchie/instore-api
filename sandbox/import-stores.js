#!/usr/bin/env node
'use strict'

// Run this inside the container

require('babel-core/register')({
  plugins: ['transform-async-to-generator'],
});

require("babel-polyfill");

const fs = require('fs');

const database = require('../server/database').default;
const Store = database.models.Store;

// For importing store data
Store.sync({ force: true }).then(() => {
  fs.readFile('./store-hour-data.json', 'utf-8', (error, data) => {
    if (error) {
      console.log('There\'s a fucking error');
      console.log(error);
    }
    let parsed = JSON.parse(data);
    let stores = [];

    for (let i = 0; i < parsed.length; i++) {
      const storeData = parsed[i];
      let hourData = storeData['hours'] !== undefined ? storeData['hours'][0] : undefined;

      let hour = undefined;

      if (hourData) {
        hour = {
          open: hourData['open'],
          hours_type: hourData['hours_type'],
          is_open_now: hourData['is_open_now'],
        }
      }

      const store = {
        yelpId: storeData['id'],
        name: storeData['name'],
        location: {
          address1: storeData['location']['address1'],
          address2: storeData['location']['address2'],
          address3: storeData['location']['address3'],
          city: storeData['location']['city'],
          state: storeData['location']['state'],
          zip_code: storeData['location']['zip_code'],
          country: storeData['location']['country'],
        },
        imageUrl: storeData['image_url'],
        hour: hour,
        phoneNumber: storeData['phone'],
        category: storeData['categories'],
        coordinate: storeData['coordinates'],
      }

      stores.push(store);
    }

    for (let store of stores) {
      Store.create({
        yelpId: store.yelpId,
        name: store.name,
        location: store.location,
        imageUrl: store.imageUrl,
        hour: store.hour,
        phoneNumber: store.phoneNumber,
        category: store.category,
        coordinate: store.coordinate,
      });
    }
  });
});

