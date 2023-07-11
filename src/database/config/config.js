const {
  DB_HOST,
  DB_NAME,
  DB_PASSWORD,
  DB_USER,
  DB_PORT
} = require("../../controllers/config.js");

module.exports = {
  "development": {
    "username": DB_USER,
    "password": DB_PASSWORD,
    "database": DB_NAME,
    "host": DB_HOST,
    "port": DB_PORT,
    "dialect": "mysql"
  },
  "test": {
    "username": DB_USER,
    "password": DB_PASSWORD,
    "database": "database_test",
    "host": DB_HOST,
    "port": DB_PORT,
    "dialect": "mysql"
  },
  "production": {
    "username": DB_USER,
    "password": DB_PASSWORD,
    "database": "database_production",
    "host": DB_HOST,
    "port": DB_PORT,
    "dialect": "mysql"
  }
};
