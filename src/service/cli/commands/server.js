'use strict';

const config = require(`../../../../config`);
const express = require(`express`);
const {once} = require(`events`);
const api = require(`../../api`);
const {logger} = require(`../../../utils`).logger;
const {translateMessage} = require(`../../../utils`);
const {logRequests} = require(`../../middleware`);
const cors = require(`cors`);
const path = require(`path`);

const {
  API_PREFIX
} = require(`../../constants`);
const {ValidationError} = require(`express-validation`);

const server = async (manager, args) => {
  const port = args[0] || config.server.port;

  const app = express();
  app.use(express.json());
  app.use(cors());
  app.use(logRequests);

  app.use(API_PREFIX, (req, res, next) => {
    logger.error(`[ROUTE]: ${req.method} ${req.url}`);
    next();
  }, api.router);

  console.log(path.resolve(__dirname, `../../public`));

  app.use(express.static(path.resolve(__dirname, `../../public`)));

  app.use((req, res) => res.status(404).send(`Not found`));
  app.use((err, req, res, _next) => {
    if (err instanceof ValidationError) {
      const results = err.details;
      const errors = Object.keys(results)
        .reduce((acc, parameter) => {
          return ({
            ...acc,
            [parameter]: results[parameter].reduce(
              (inner, el) => ({...inner, [el.context.key]: translateMessage(el)}),
              {}
            )
          });
        }, {});
      res.status(err.statusCode).json(errors);
      return;
    }

    logger.info(`[ERROR]: ${err.stack}`);
    res.status(500).send(`Internal server error`);
  });

  return once(app.listen(port), `listening`)
    .then(() => logger.info(`[SERVER]: Ожидаю соединений на ${port}`))
    .catch((err) => {
      logger.info(`[ERROR]: ${err.msg}`);
    });
};

module.exports = server;
