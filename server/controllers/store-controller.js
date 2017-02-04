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
    const result = await Store.findAndCountAll({
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
      count: result.rows.length,
      totalCount: result.count,
      stores: result.rows,
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