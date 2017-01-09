import Router from 'koa-router';

import database from '../database';

const Store = database.models.Store;

const storeRouter = new Router();

storeRouter.get('/store', async (ctx, next) => {
  ctx.body = 'You\'re on a store detail page!';
});

export default storeRouter;
