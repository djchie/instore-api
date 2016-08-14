const Koa = require('koa');
const server = new Koa();

const logger = require('koa-logger');
const responseTime = require('koa-response-time');

const port = process.env.PORT || 5000;

// Logs requests made and reponses sent
server.use(logger());

// Adds a X-Response-Time in the response header
server.use(responseTime());

// response middleware
server.use(ctx => {
  ctx.body = 'Hello World';
});

server.listen(port, () => console.log('Running at http://localhost:' + port));

export default server;