import sequelize from 'sequelize';

import database from '../database';
import services from '../services';

const Product = database.models.Product;
const Inventory = database.models.Inventory;
const Store = database.models.Store;

const productController = {};

productController.fetchProducts = async (
  query,
  location,
  northeastBound,
  southwestBound,
  category,
  type,
  brand,
  minPrice=0,
  maxPrice,
  minStock=1,
  maxStock,
  orderByField='name',
  orderAscending=1,
  page=0,
  limit=20
) => {
  return new Promise(async (resolve, reject) => {

    if (Number(page) < 0) {
      reject(new Error('Page index out of bounds'));
    }

    // Gets coordinates based on address via Google Geocoding API

    let formattedLocation;
    let northeastCoordinates;
    let southwestCoordinates;

    try {
      const geocodingResponse = await services.google.geocoding.getGeocoding(location);
      formattedLocation = {
        address: geocodingResponse.results[0].formatted_address,
        latitude: geocodingResponse.results[0].geometry.location.lat,
        longitude: geocodingResponse.results[0].geometry.location.lng,
      };

      if (northeastBound && southwestBound) {
        const northeastBoundCoordinates = northeastBound.split(',');
        const southwestBoundCoordinates = southwestBound.split(',');

        northeastCoordinates = {
          latitude: northeastBoundCoordinates[0],
          longitude: northeastBoundCoordinates[1],
        };

        southwestCoordinates = {
          latitude: southwestBoundCoordinates[0],
          longitude: southwestBoundCoordinates[1],
        };
      } else {
        northeastCoordinates = {
          latitude: geocodingResponse.results[0].geometry.bounds.northeast.lat,
          longitude: geocodingResponse.results[0].geometry.bounds.northeast.lng,
        };
        southwestCoordinates = {
          latitude: geocodingResponse.results[0].geometry.bounds.southwest.lat,
          longitude: geocodingResponse.results[0].geometry.bounds.southwest.lng,
        };
      }

      formattedLocation.bounds = {
        northeast: northeastCoordinates,
        southwest: southwestCoordinates,
      };

    } catch (error) {
      reject(error);
    }

    const productWhere = {};

    if (query) {
      productWhere.$or = [
        {
          name: {
            $like: `%${query}%`,
          },
        },
        {
          description: {
            $like: `%${query}%`,
          },
        },
      ];
    }

    if (category) {
      productWhere.category = category;
    }

    if (type) {
      productWhere.type = type;
    }

    if (brand) {
      productWhere.brand = brand;
    }

    const inventoryWhere = {
      price: {
        $gte: minPrice,
      },
      stock_count: {
        $gte: minStock,
      }
    };

    if (maxPrice) {
      inventoryWhere.price.$lte = maxPrice;
    }

    if (maxStock) {
      inventoryWhere.stock_count.$lte = maxStock;
    }

    // In the future, handle for store hours
    const storeWhere = {
        coordinate: {
          latitude: {
            $gt: formattedLocation.bounds.southwest.latitude,
            $lt: formattedLocation.bounds.northeast.latitude,
          },
          longitude: {
            $gt: formattedLocation.bounds.southwest.longitude,
            $lt: formattedLocation.bounds.northeast.longitude,
          }
        },
    };

    const offset = page * limit;

    try {
      const result = await Product.findAll({
        where: productWhere,
        include: [
          {
            model: Store,
            where: storeWhere,
            // distinct: true,
            through: {
              attributes: ['stock_count', 'price'],
              where: inventoryWhere,
              as: 'inventory',
            },
            attributes: ['id', 'name', 'location', 'image_url', 'phone_number', 'hour', 'coordinate'],
            order: ['price', 'ASC'],
            as: 'stores',
            // Converts this to a left join
            // This makes it so that products without an inventory and store are also returned
            // Without it, it becomes an inner join
            // required: false,
          },
        ],
        order: [
          [orderByField, !!Number(orderAscending) ? 'ASC' : 'DESC'],
        ],
        // offset: offset,
        // This puts a limit on the subquery, so we can't use this for now
        // https://github.com/sequelize/sequelize/issues/6073
        // limit: limit,
      });

      // let totalPage = 0;

      // if (result.count > 0) {
      //   totalPage = Math.ceil(result.count / limit);
      // }

      // if (page >= totalPage) {
      //   reject(new Error('Page index out of bounds'));
      // }

      // const response = {
      //   query: query,
      //   location: formattedLocation,
      //   orderByField: orderByField,
      //   orderAscending: orderAscending,
      //   limit: limit,
      //   page: page,
      //   totalPage: totalPage,
      //   count: result.rows.length,
      //   totalCount: result.count,
      //   products: result.rows,
      // };

      const products = result;
      const totalCount = products.length;

      
      let totalPage = 0;

      if (totalCount > 0) {
        totalPage = Math.ceil(totalCount / limit);
      }

      if (page >= totalPage) {
        reject(new Error('Page index out of bounds'));
      }

      const paginatedProducts = products.slice(offset, offset + limit);

      const response = {
        query: query,
        location: formattedLocation,
        orderByField: orderByField,
        orderAscending: orderAscending,
        limit: limit,
        page: page,
        totalPage: totalPage,
        count: paginatedProducts.length,
        totalCount: totalCount,
        products: paginatedProducts,
      };

      resolve(response);
    } catch (error) {
      console.log('Error with Product.findAll');
      console.log(error);
      reject(error);
    }
  });
};

productController.fetchProduct = async (id) => {
  return new Promise(async (resolve, reject) => {
    try {
      const product = await Product.find({
        where: {
          id: id,
        },
      });

      if (!product) {
        const error = new Error('Product not found');
        error.status = 404;
        reject(error);
      }

      resolve(product);
    } catch (error) {
      console.log('Error with Product.find');
      console.log(error);
      reject(error);
    }
  });
};

export default productController;
