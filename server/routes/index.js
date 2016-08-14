const setSearchRoutes = require('./search-routes').default;

const setRoutes = (router) => {
  setSearchRoutes(router);
};

export default setRoutes;