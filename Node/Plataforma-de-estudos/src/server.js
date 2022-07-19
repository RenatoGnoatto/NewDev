const express = require('express')
const cors = require('cors')
const sqlite3 = require('sqlite3')
const routes = require('./routes')

const app = express()

const database = new sqlite3.Database('aaa', err => {
  if (err) {
    console.log(err)
  }
})
const PORT = 1069

app.use(cors())
app.use(express.json())
app.use(routes)

app.listen(PORT, () => {
  console.log(`API is listening on port ${PORT} `)
})
