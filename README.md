To manually generate shoe mock data
1. `./scripts/shell/koa.sh`
1. `cd sandbox`
1. `./sandbox/import-products.js`
1. `./sandbox/import-stores.js`
1. `./sandbox/generate-inventories.js`

To build the instore image:
1. `./scripts/docker/build_image.sh`

To run locally:
1. `docker-compose up`
1. `./scripts/data/load_data.sh`

To reset database (somehow you fucked up the data):
1. `./scripts/data/reset_database.sh`

Useful postgresql settings
`\x off;\pset format wrapped`
`\x on`


ean
gender
brand
model
price
color
size
description
images

localhost:8080/api/1.0/product?query=Nike&orderByField=name&orderAscending=1&page=1&limit=10
localhost:8080/api/1.0/store?orderByField=name&orderAscending=1&page=1&limit=10

TODO:

make on cascade delete
  when deleting product, should delete all inventories
  when deleting store, should delete all associated inventories

Return count of results

create endpoint for getting all products (make sure it's formatted correctly)
  should have stockCount (All, 1+, 2+, 3+, 5+, 10+, 20+, 50+) and local coordinates query url params
    returns product array with coordinates of stores that carry it, and some meta data (such as store_id, phone, address, hours, etc for hover over tooltip)
    http://docs.sequelizejs.com/en/v3/docs/querying/
      look at Relations / Associations on how to do this
  handle situations when brand, type, size, etc is not given (returns empty results right now)
    we can just have each default to all

prepare for client
  copy webpack build process from nba
  take out all the unecessary stuff from nba until there's about 3 components
  setup heroku for deployment
  gonna try and implement server side rendering to get that out of the way  
  gonna break client off into another submodule


// Resources on server-side rendering

// https://scotch.io/tutorials/react-on-the-server-for-beginners-build-a-universal-react-and-node-app

// https://medium.com/@Strues/setup-a-universal-react-application-382dd2486259#.1xi2m3585

// https://github.com/ngduc/react-setup/blob/faa44f87eb4a9858ca4e940dd25b0ea9606bc1ee/src/server/renderAppRouter.js

// https://github.com/ngduc/react-setup/blob/master/src/server.js

// https://github.com/ngduc/react-setup/blob/master/src/server/renderAppRouter.js

Example app with server side, webpack, koa 2, postgres
https://github.com/embbnux/kails/tree/master/config


You may have noticed that once you stop the container, if you previously wrote some data on the DB, that data is lost. This is because by default Docker containers are not persistent. We can resolve this problem using a data container.

possible setup data container?



SQUARE AND SHOPIFY

When merchant first signs with us, we have them download our Square or Shopify plugin
  We import their store information, product, and inventory
    Anytime a new product is invented, we will have to know somehow

Has webhooks, so when item inventory is updated, a post request is made to our server
  This could then update our inventory table for the respective product
* We supposedly can't save any of the data

Then we'd have a frontend facing application for consumers





Sprint by people from Google Ventures

Human Centered Design by people from IDEO


test out bby

hqaiKGWmy7LrNC8Mvw4RC0mH







Monday
  instore architecture and database cleanup
Tuesday
  setup nba deployment
  look for nba alternative
  start looking into reddit api, youtube api, and twitter api
Wednesday
  instore