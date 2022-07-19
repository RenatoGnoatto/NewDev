const express = require('express');
const routes = express.Router();

const cursoController = require('./controllers/cursoController');
const aulaController = require('./controllers/aulaController');
const professorController = require('./controllers/professorController');

// cursos

routes.get('/', cursoController.getCourses);

routes.post('/', cursoController.postCourse);


//aulas

//professores

module.exports = routes
