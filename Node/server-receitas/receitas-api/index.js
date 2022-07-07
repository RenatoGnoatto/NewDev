const http = require('http')
const URL = require('url')
const fs = require('fs')
const path = require('path')
const recipes = require('./receitas.json')

const doReceitas = (req, res) => {
  let exist = 0
  let { name, description, ingredients } = URL.parse(req.url, true).query

  if (name && description && ingredients) {
    recipes.forEach((item, index) => {
      if (item.name === name) {
        exist++
        return exist
      }
    })
    if (exist === 0) {
      recipes.push({ name, description, ingredients })
      fs.writeFile(
        path.join(__dirname, 'receitas.json'),
        JSON.stringify(receitas, null, 2),
        err => {
          console.log(err)
        }
      )
      res.end(JSON.stringify(recipes))
    }
  } else {
    res.end(JSON.stringify(recipes))
  }
  res.end(recipes)
}

const server = http.createServer(doReceitas)

server.listen(10, () => {
  console.log('API listening on http://localhost:')
})
