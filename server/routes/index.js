import Router from 'koa-router';

import config from '../../config';

import searchRouter from './search-routes';
import productRouter from './product-routes';
import storeRouter from './store-routes';

const router = new Router({
  prefix: `/api/${config.api.version}`,
});

router.use(searchRouter.routes());
router.use(productRouter.routes());
router.use(storeRouter.routes());

export default router;
