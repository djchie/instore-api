import Router from 'koa-router';

import database from '../database';

// import User from database.models.user;

const userRouter = new Router();

userRouter.get('/user', async (ctx, next) => {
  ctx.body = 'You\'re on a user detail page!';
});

export default userRouter;
