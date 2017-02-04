import Router from 'koa-router';

import config from '../../config';

import productRouter from './product-routes';
import storeRouter from './store-routes';
import inventoryRouter from './inventory-routes';

const router = new Router({
  prefix: `/api/${config.api.version}`,
});

router.use(productRouter.routes());
router.use(storeRouter.routes());
router.use(inventoryRouter.routes());

export default router;
