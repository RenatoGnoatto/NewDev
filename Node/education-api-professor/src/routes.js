const express = require('express');

const routes = express.Router();

const {
  CursesController,
  InstructorsController,
  LessonsController,
  IndexController
} = require('./controllers/index');

routes.get('/', IndexController.index);

routes.post('/course', CursesController.create);

routes.post('/instructors', InstructorsController.create);

routes.post('/lesson', LessonsController.create);

module.exports = routes;
