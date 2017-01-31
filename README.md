

Figure out how server and client should interact... when the client side should be built... etc



To run locally:
1. `./scripts/docker/build_image.sh`
2. `docker-compose up`
3. `./scripts/data/load_data.sh`


\x off;\pset format wrapped
\x on


ean
gender
brand
model
price
color
size
description
images

http://localhost:8080/api/1.0/
http://localhost:8080/api/1.0/product



TODO:




RESEARCH change database stuff to underscore?
  Google "sequelize model field naming convention"

figure how to create inventory via "productId" and "storeId", rather than "product_id" and "store_id"
  Check out http://docs.sequelizejs.com/en/v3/api/associations/

OR

convert all the model fields to underscore

make on cascade delete


Fix the following:

Error with reset database

Figure out what these errors are about:
  multiple primary keys for table "product" are not allowed
  multiple primary keys for table "store" are not allowed
  multiple primary keys for table "inventory" are not allowed



create endpoint for getting all products (make sure it's formatted correctly)

create endpoint for getting stores




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
  discuss mockup ui
  discuss what we want
Tuesday
  setup nba deployment
  start looking into reddit api, youtube api, and twitter api