const EventsEmmiter = require('events')

const path = require('path')
const fs = require('fs')

const emmiter = new EventsEmmiter()

emmiter.on('log', message => {
  fs.appendFile(path.join(__dirname, 'error.log'), message, err => {
    if (err) {
      throw err
    }
  })
})

emmiter.emit('log', '\nihhul')

function log(message) {
  emmiter.emit('log', message)
}

module.exports = log
