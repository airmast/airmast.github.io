'use strict'

express = require 'express'
app = express()

process.chdir __dirname

app.use express.static('../')

app.get '/', (req, res) ->
  res.sendFile('../index.html')

console.log 'Please open "http://localhost:3100/" in browser'

app.listen 3100
