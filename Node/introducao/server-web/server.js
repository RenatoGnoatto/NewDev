const http = require('http')
const fs = require('fs')
const path = require('path')

const server = http.createServer((request, response) => {
  console.log('server web')
  const url = request.url

  let file = url === '/' ? 'index.html' : request.url
  if (url === '/cadastro') {
    file = 'register.html'
  }
  const filePath = path.join(__dirname, 'public', file)

  fs.readFile(filePath, (error, content) => {
    if (error) {
      return error
    }
    return response.end(content)
  })
})

server.listen(3002, () => {
  console.log('Server is listening on http://localhost:3002')
})
