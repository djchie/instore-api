const Koa = require('koa');
const Router = require('koa-router');

const port = process.env.PORT || 5000;
const apiVersion = '1.0';

const server = new Koa();
const router = new Router({
  prefix: '/api/' + apiVersion,
});

const logger = require('koa-logger');
const responseTime = require('koa-response-time');

// Logs requests made and reponses sent
server.use(logger());

// Adds a X-Response-Time in the response header
server.use(responseTime());

// response middleware
router.get('/', async (ctx, next) => {
  ctx.body = 'Hello World';
});

router.get('/search', async (ctx, next) => {
  ctx.body = 'You\'re about to make a search!';
});

server.use(router.routes());

server.listen(port, () => console.log('Running at http://localhost:' + port));

export default server;