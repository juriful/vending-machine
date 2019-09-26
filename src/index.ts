import * as express from 'express'
import * as config from './config.json'

var app = express()

app.listen(config.server.nodePort, () => {
  console.log(`Listening on port ${config.server.nodePort} ...`)
})

app.get('/', (req, res) => {
  res.send('hello dragon')
})
