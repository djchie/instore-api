const setSearchRoutes = (router) => {
  router.get('/search', async (ctx, next) => {
    ctx.body = 'You\'re about to make a search!';
  });
}

export default setSearchRoutes;