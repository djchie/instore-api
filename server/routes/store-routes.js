import Router from 'koa-router';

import database from '../database';
import storeController from '../controllers/store-controller';

const storeRouter = new Router();

storeRouter.get('/store', async (ctx, next) => {
  const {
    orderByField,
    orderAscending,
    page,
    limit,
  } = ctx.query;

  try {
    const response = await storeController.fetchStores(
      orderByField,
      orderAscending,
      page,
      limit
    );

    ctx.status = 200;
    ctx.body = response;
  } catch (error) {
    ctx.body = error.message;
    ctx.throw(500, error.message);
  }
});

storeRouter.get('/store/:id', async (ctx, next) => {
  const {
    id,
  } = ctx.params;

  try {
    const response = await storeController.fetchStore(id);

    ctx.status = 200;
    ctx.body = response;
  } catch (error) {
    ctx.body = error.message;
    ctx.throw(500, error.message);
  }
});

export default storeRouter;
