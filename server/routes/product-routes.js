import Router from 'koa-router';

import database from '../database';
import productController from '../controllers/product-controller';

const productRouter = new Router();

productRouter.get('/product', async (ctx, next) => {
  const {
    query,
    category,
    type,
    brand,
    size,
    color,
    orderByField,
    orderAscending,
    page,
    limit,
  } = ctx.query;

  try {
    const response = await productController.fetchProducts(
      query,
      category,
      type,
      brand,
      size,
      color,
      orderByField,
      orderAscending,
      page,
      limit
    );

    ctx.status = 200;
    ctx.body = response;
  } catch (error) {
    ctx.status = error.status || 500;
    ctx.body = {
      message: error.message
    };
  }
});

export default productRouter;
