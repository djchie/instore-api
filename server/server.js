import Koa from 'koa';
import Router from 'koa-router';
import serve from 'koa-static';
import Sequelize from 'sequelize';
import convert from 'koa-convert';

import logger from 'koa-logger';
import responseTime from 'koa-response-time';

import database from './database';
import config from '../config';
import router from './routes';

const port = process.env.PORT || config.server.port;

const server = new Koa();

// Synchronizes the database
database.sync({
  force: config.database.force,
});

// Logs requests made and reponses sent
server.use(convert(logger()));

// Adds a X-Response-Time in the response header
server.use(convert(responseTime()));

// Serves the build folder
server.use(convert(serve('build/')));

// response middleware
router.get('/', async (ctx, next) => {
  ctx.body = 'Hello World';
});

// Connects all of the api endpoint routes
server.use(router.routes());

server.listen(port, () => console.log('Running at http://localhost:' + port));

export default server;
