const express = require('express')
const routes = express.Router()

const authorController = require('./controllers/AuthorController.js')
const bookController = require('./controllers/BooksController')

//Authors

routes.get('/authors', authorController.get)

routes.post('/authors', authorController.post)

routes.delete('/authors/:id', authorController.deleteById)

routes.put('/authors/:id', authorController.put)

routes.patch('/authors/:id', authorController.patchById)

// Books

routes.get('/books', bookController.get)

routes.post('/books', bookController.post)

routes.delete('/books/:id', bookController.deleteId)

routes.put('/books/:id', bookController.putId)

routes.patch('/books/:id', bookController.patchId)

module.exports = routes
