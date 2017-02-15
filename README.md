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

To reset datatbase (somehow you fucked up the data):
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

create the instore-pipeline repo
  setup toml
  hook up to bestbuy

Later, we should always pass in a default location, usually user's current location


prepare for client
  setup heroku for deployment
  dev
    webpack dev build then nodemon index
  stage
    webpack prod build then node index
  prod
    webpack prod build then node index
    
gonna try and implement server side rendering to get that out of the way  

setup heroku for staging and production server



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






Look at the following for a node deubgger
https://nodejs.org/api/debugger.html





bug with limit, offset, and include
Makes a possible fix to bug with limit, offset, and include via setting required to false in the include, but need to research this more

required = false
products will appear even if the stores is empty

required = true
there will be some pages where the count is less than 20 even if the limit is at 20

https://github.com/sequelize/sequelize/issues/1719

You can use $column$ to reference columns from a joined table on the outer query









Paging is still off somehow

sort stores by lowest price?

for stores subquery, set a limit of 10 stores



get product by id should return stores, but somehow paginated? this is for hte second page