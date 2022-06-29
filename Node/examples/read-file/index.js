const http = require('http')
const URL = require('url')
const users = require('./users.json')
console.log('users', users)

http
  .createServer((request, response) => {
    // const {alo} = JSON.parse
    const query = URL.parse(request.url, true).query
    console.log('querry', query)
    response.end(JSON.stringify(users))
  })
  .listen(50007, () => {
    console.log('Api Is running on port 50007')
  })
