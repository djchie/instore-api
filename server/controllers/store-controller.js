import sequelize from 'sequelize';

import database from '../database';

const Store = database.models.Store;

const storeController = {};

storeController.fetchStores = async (
  orderByField='name',
  orderAscending=1,
  page=1,
  limit=20
) => {
  try {
    const stores = await Store.findAll({
      order: [
        [orderByField, !!Number(orderAscending) ? 'ASC' : 'DESC'],
      ],
      offset: (page - 1) * limit,
      limit: limit,
    });

    return {
      orderByField: orderByField,
      orderAscending: orderAscending,
      page: page,
      limit: limit,
      products: stores,
    };
  } catch (error) {
    return error;
  }
}

storeController.fetchStore = async (id) => {
  try {
    const store = await Store.find({
      where: {
        id: id,
      },
    });

    return store;
  } catch (error) {
    return error;
  }
}

export default storeController;