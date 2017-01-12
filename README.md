d1. Setup docker
    connect endpoints to db via sequelize
    convert and add data to sequelize
    create fixtures
    organize docker files
2. Create mock shoe product data from Semantics3
    - Put this into a postgresql db
3. Create mock data for shoe stores
    - Put this into a postgresql db


2. Set up search with query params
3. Set up Semantics API and return searches....


use posgres

Figure out how server and client should interact... when the client side should be built... etc

other action tiles, make sure the title is clicable as well


1. `./scripts/docker/koa-server/build_image.sh`
2. `docker-compose up`


Bases image off of ubuntu 16.04, upgrades node to 7, and upgrades psql and pg_dump to 9.5.5


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


find store data
  scrape yelp or use their api
    nike, champ, footlocker, shriek
add hours to store model
format store data
import store data




help picato debug

create endpoint for getting all products (make sure it's formatted correctly)



You may have noticed that once you stop the container, if you previously wrote some data on the DB, that data is lost. This is because by default Docker containers are not persistent. We can resolve this problem using a data container.

possible setup data container?
