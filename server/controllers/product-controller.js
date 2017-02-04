import sequelize from 'sequelize';

import database from '../database';

const Product = database.models.Product;

const productController = {};

productController.fetchProducts = async (
  query,
  category='All',
  type='All',
  brand='All',
  size='All',
  color='All',
  orderByField='name',
  orderAscending=1,
  page=1,
  limit=20
) => {

  const where = {
    $or: [
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
    ],
  };

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
    const products = await Product.findAll({
      where: where,
      order: [
        [orderByField, !!Number(orderAscending) ? 'ASC' : 'DESC'],
      ],
      offset: (page - 1) * limit,
      limit: limit,
      // attributes: [[sequelize.fn('COUNT', sequelize.col('id')), 'count']]
    });

    return {
      query: query,
      orderByField: orderByField,
      orderAscending: orderAscending,
      page: page,
      limit: limit,
      products: products,
    };
  } catch (error) {
    return error;
  }
};

export default productController;
