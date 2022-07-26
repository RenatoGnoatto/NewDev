const express = require('express');

const routes = express.Router();

IndexController = require('./controllers/IndexController');
CursesController = require('./controllers/CurseControllers');
InstructorsController = require('./controllers/InstructorsController');
LessonsController = require('./controllers/LessonsController');

routes.get('/', IndexController.index);

routes.post('/course', CursesController.create);

routes.post('/instructors', InstructorsController.create);

routes.post('/lesson', LessonsController.create);

module.exports = routes;
