import Router from 'koa-router';

const searchRouter = new Router();

searchRouter.get('/search', async (ctx, next) => {
  ctx.body = 'You\'re about to make a search!';
});

export default searchRouter;