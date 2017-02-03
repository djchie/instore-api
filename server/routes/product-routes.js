import Router from 'koa-router';

import database from '../database';

const Product = database.models.Product;

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
    const products = await Product.findAll({
      where: {
        $or: [
          {
            name: {
              $like: `%${query}%`,
            },
          },
          {
            description: {
              $like: `%${query}%`,
            },
          },
        ],
      },
      order: [
        [orderByField, !!Number(orderAscending) ? 'ASC' : 'DESC'],
      ],
      offset: (page - 1) * limit,
      limit: limit,
    });

    ctx.body = products;
  } catch (error) {
    ctx.throw(500, error.message);
  }
});

productRouter.post('/product'), async (ctx, next) => {
  
}

export default productRouter;
