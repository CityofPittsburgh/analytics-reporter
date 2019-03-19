const express = require('express')
const app = express()
const port = $PORT | 3000
 
app.get('/', function (req, res) {
  res.send('Hello world, from pgh analytics reporter')
})
 
app.listen(port)