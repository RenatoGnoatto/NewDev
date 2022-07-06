const http = require('http')
const URL = require('url')
const fs = require('fs')
const path = require('path')
const recipes = require('./receitas.json')

const doReceitas = (req, res) => {
  let { name, description, ingredients } = URL.parse(req.url, true).query
  console.log(name, description, ingredients)

  res.end(name, description, ingredients)
}

const server = http.createServer(doReceitas)

server.listen(10, () => {
  console.log('API listening on http://localhost:')
})
