

Figure out how server and client should interact... when the client side should be built... etc



To run locally:
1. `./scripts/docker/build_image.sh`
2. `docker-compose up`
3. `./scripts/data/load_data.sh`





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

create endpoint for getting all products (make sure it's formatted correctly)

import store data

generate inventory information

You may have noticed that once you stop the container, if you previously wrote some data on the DB, that data is lost. This is because by default Docker containers are not persistent. We can resolve this problem using a data container.

possible setup data container?
