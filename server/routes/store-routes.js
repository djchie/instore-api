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

  const stores = await Store.findAll({
    order: [
      [orderByField, !!Number(orderAscending) ? 'ASC' : 'DESC'],
    ],
    offset: (page - 1) * limit,
    limit: limit,
  });

  ctx.body = stores;
});

storeRouter.get('/store/:id', async (ctx, next) => {
  const {
    id,
  } = ctx.params;

  const store = await Store.find({
    where: {
      id: id,
    },
  });

  ctx.body = store;
});

export default storeRouter;
