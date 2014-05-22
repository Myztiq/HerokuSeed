express = require 'express'
http = require 'http'
app = express()

serverURL = 'localhost:3000'
if process.env.serverURL?
  serverURL = process.env.serverURL

app.use express.static __dirname + '/public'

app.use (req, res)->
  res.sendfile('public/index.html')

http.createServer(app).listen process.env.PORT or 3000

console.log "Server running - on port " +(process.env.PORT or 3000)
