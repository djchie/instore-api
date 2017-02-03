import Router from 'koa-router';

import database from '../database';

const Store = database.models.Store;

const storeRouter = new Router();

storeRouter.get('/store', async (ctx, next) => {
  const {
    orderByField,
    orderAscending,
    page,
    limit,
  } = ctx.query;

  try {
    const stores = await Store.findAll({
      order: [
        [orderByField, !!Number(orderAscending) ? 'ASC' : 'DESC'],
      ],
      offset: (page - 1) * limit,
      limit: limit,
    });

    ctx.body = stores;
  } catch (error) {
    ctx.throw(500, error.message);
  }
});

storeRouter.get('/store/:id', async (ctx, next) => {
  const {
    id,
  } = ctx.params;

  try {
    const store = await Store.find({
      where: {
        id: id,
      },
    });

    ctx.body = store;
  } catch (error) {
    ctx.throw(500, error.message);
  }
});

export default storeRouter;
