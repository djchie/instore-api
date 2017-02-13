import fs from 'fs';
import path from 'path';

import Sequelize from 'sequelize';

import config from '../config';

const modelsPath = path.join(__dirname, '/models/');

// Connects to the database
const connection = new Sequelize(
  config.database.db,
  config.database.user,
  config.database.password, {
    dialect: 'postgres',
    port: config.database.port,
    host: config.database.host,
    // quoteIdentifiers: false,
    freezeTableName: true,
    define: {
      underscored: true,
      underscoredAll: true,
    },
  }
);

// Test the database connection
connection.authenticate()
  .then(err => {
    console.log('Connection has been established successfully.');
  }, err => {
    console.log('Unable to connect to the database:', err);
  });

const database = {};

fs.readdirSync(modelsPath)
  .filter(file => file.indexOf('.') > 0)
  .forEach(file => {
    const model = connection.import(path.join(modelsPath, file));
    database[model.name] = model;
  });

Object.keys(database).forEach(modelName => {
  if ('associate' in database[modelName]) {
    database[modelName].associate(database);
  }
});

export default connection;
