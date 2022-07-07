const http = require('http')

const store = (req, res) => {
  res.writeHead(200, { 'Access-Control-Allow-Origin': '*' })

  res.end('alo')
}

const server = http.createServer(store)

server.listen(1000, () => {
  console.log('Server back is listening on port: 69 hehe')
})
