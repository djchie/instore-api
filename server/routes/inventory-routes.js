import Router from 'koa-router';

import database from '../database';

const Inventory = database.models.Inventory;

const inventoryRouter = new Router();

inventoryRouter.get('/inventory', async (ctx, next) => {
  ctx.body = 'You\'re on a inventory detail page!';
});

export default inventoryRouter;
