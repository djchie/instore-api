const Koa = require('koa');
const Router = require('koa-router');

const logger = require('koa-logger');
const responseTime = require('koa-response-time');

const config = require('../config').default;
const port = process.env.PORT || config.server.port;

const server = new Koa();
const router = new Router({
  prefix: '/api/' + config.api.version,
});

const setRoutes = require('./routes').default;
console.log(setRoutes);
// Logs requests made and reponses sent
server.use(logger());

// Adds a X-Response-Time in the response header
server.use(responseTime());

// response middleware
router.get('/', async (ctx, next) => {
  ctx.body = 'Hello World';
});

setRoutes(router);

server.use(router.routes());

server.listen(port, () => console.log('Running at http://localhost:' + port));

export default server;