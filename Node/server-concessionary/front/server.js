const http = require('http')
const path = require('path')
const fs = require('fs')

const web = (req, res) => {
  const url = require('url')
  let file = url === '/' ? 'index.html' : req.url
  if (file === 'favicon.ico') {
    file = 'index.html'
  }
  const filePath = path.join(__dirname, 'public', file)
  fs.readFile(filePath, (error, content) => {
    error ? console.log('error', error) : null
    return res.end(content)
  })
}

const server = http.createServer(web)

server.listen(1001, () => {
  console.log('Server front is listening on port:1001')
})
