import sequelize from 'sequelize';

import database from '../database';
import services from '../services';

const Product = database.models.Product;

const productController = {};

productController.fetchProducts = async (
  query='All',
  location,
  category='All',
  type='All',
  brand='All',
  size='All',
  color='All',
  orderByField='name',
  orderAscending=1,
  page=0,
  limit=20
) => {
  return new Promise(async (resolve, reject) => {

    if (Number(page) <= 0) {
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

    const where = {};

    if (query != 'All') {
      where.$or = [
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

    if (category != 'All') {
      where.category = category;
    }

    if (type != 'All') {
      where.type = type;
    }

    if (brand != 'All') {
      where.brand = brand;
    }

    if (size != 'All') {
      where.size = size;
    }

    if (color != 'All') {
      where.color = color;
    }

    try {
      const result = await Product.findAndCountAll({
        where: where,
        order: [
          [orderByField, !!Number(orderAscending) ? 'ASC' : 'DESC'],
        ],
        offset: page * limit,
        limit: limit,
      });

      const totalPage = Math.ceil(result.count / limit) - 1;

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
      reject(error);
    }
  });
};

export default productController;
