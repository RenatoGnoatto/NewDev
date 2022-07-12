const express = require('express')
const routes = express.Router()

const authorController = require('./controllers/AuthorController.js')

//Authors

routes.get('/authors', authorController.get)

routes.post('/authors', authorController.post)

routes.delete('/authors/:id', authorController.deleteById)

routes.put('authors/:id', authorController.putById)

routes.patch('authors/:id', authorController.patchById)


module.exports = routes
