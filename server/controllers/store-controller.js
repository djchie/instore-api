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
  return new Promise(async (resolve, reject) => {
    
    if (Number(page) <= 0) {
      reject(new Error('Page index out of bounds'));
    }
    
    try {

      const result = await Store.findAndCountAll({
        order: [
          [orderByField, !!orderAscending ? 'ASC' : 'DESC'],
        ],
        offset: (page - 1) * limit,
        limit: limit,
      });

      const totalPage = Math.ceil(result.count / limit);

      if (page > totalPage) {
        reject(new Error('Page index out of bounds'));
      }

      const response = {
        orderByField: orderByField,
        orderAscending: orderAscending,
        limit: limit,
        page: page,
        totalPage: totalPage,
        count: result.rows.length,
        totalCount: result.count,
        stores: result.rows,
      };

      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};

storeController.fetchStore = async (id) => {
  return new Promise(async (resolve, reject) => {
    try {
      const store = await Store.find({
        where: {
          id: id,
        },
      });

      resolve(store);
    } catch (error) {
      reject(error);
    }
  });
};

export default storeController;