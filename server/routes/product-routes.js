import Router from 'koa-router';

const productRouter = new Router();

productRouter.get('/product', async (ctx, next) => {
  ctx.body = 'You\'re on a product detail page!';
});

export default productRouter;