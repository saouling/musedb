const express = require('express')
const app = express()
const cors = require('cors');
app.use(express.static('./public'))

const museums_router = require('./routes/museums_router.js')
const exhibits_router = require('./routes/exhibits_router.js')
const creators_router = require('./routes/creators_router.js');
require('./databaseConnect')()

app.use(cors())
app.use(museums_router)
app.use(exhibits_router)
app.use(creators_router)

//localhost:3003
app.listen(3003, () => {
  console.log("museDB server is up and listening on port 3003...");
})


