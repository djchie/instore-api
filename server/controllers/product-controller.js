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
    try {
      const geocodingResponse = await services.google.geocoding.getGeocoding(location);
      formattedLocation = {
        latitude: geocodingResponse.results[0].geometry.location.lat,
        longitude: geocodingResponse.results[0].geometry.location.lng,
        address: geocodingResponse.results[0].formatted_address,
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

    // Handle coordinates here
    // In the future, handle for store hours
    const storeWhere = {
        coordinate: {
          latitude: {
            $gte: 37.76,
            $lte: 37.78,
          },
        },
              // id: '923d5831-b08a-4d86-aaac-0a82a277b6db',
      // location: {

      // }
    };

    try {
      const result = await Product.findAndCountAll({
        where: productWhere,
        include: [
          {
            model: Store,
            through: {
              attributes: ['stock_count', 'price'],
              where: inventoryWhere,
              as: 'inventory',
            },
            attributes: ['id', 'name', 'location', 'image_url', 'phone_number', 'hour', 'coordinate'],
            where: storeWhere,
            as: 'stores',
          },
        ],
        order: [
          [orderByField, !!Number(orderAscending) ? 'ASC' : 'DESC'],
        ],
        offset: page * limit,
        limit: limit,
      });

      let totalPage = 0;

      if (result.count > 0) {
        totalPage = Math.ceil(result.count / limit) - 1;
      }

      if (page > totalPage) {
        reject(new Error('Page index out of bounds'));
      }

      const response = {
        query: query,
        location: formattedLocation,
        orderByField: orderByField,
        orderAscending: orderAscending,
        limit: limit,
        page: page,
        totalPage: totalPage,
        count: result.rows.length,
        totalCount: result.count,
        products: result.rows,
      };

      resolve(response);
    } catch (error) {
      console.log('Error with Product.findAndCountAll');
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
