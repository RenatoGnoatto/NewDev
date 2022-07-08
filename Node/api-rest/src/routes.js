const express = require('express')
const routes = express.Router()

//const indexController = require('./controllers/indexController.js')
const authorController = require('./controllers/AuthorController')

const BookController = require('./controllers/BookController')

//Authors

routes.get('/authors', authorController.get)

routes.post('/authors', authorController.post)

routes.delete('/authors/:id', authorController.delete)

routes.put('authors/:id', authorController.put)

routes.patch('authors/:id', authorController.patch)

module.exports = routes

//Books routes

routes.get('/books', BookController.get)

routes.post('/books/:id', BookController.post)

routes.delete('/books/:id', BookController.delete)

routes.put('/books/:id', BookController.put)

routes.patch('/books/:id', BookController.patch)
