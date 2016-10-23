import Router from 'koa-router';

import database from '../database';

const Product = database.models.Product;

const productRouter = new Router();

productRouter.get('/product', async (ctx, next) => {
  ctx.body = 'You\'re on a product detail page!';
});

productRouter.post('/product'), async (ctx, next) => {
  
}

export default productRouter;