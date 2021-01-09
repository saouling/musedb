// load our app server
const express = require('express')
const app = express()
const mysql = require('mysql')
const bodyParser = require('body-parser').json();
const cors = require('cors');
app.use(express.static('./public'))

const museums_router = require('./routes/museums_router.js')
const exhibits_router = require('./routes/exhibits_router.js')
const creators_router = require('./routes/creators_router.js')

app.use(cors())
app.use(museums_router)
app.use(exhibits_router)
app.use(creators_router)

// GET user/:id
app.get('/user/:id', (req, res) => {
  console.log("Fetching user with id: " + req.params.id)
  const connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '19mariamaria',
    database: 'nodejsdb'
  })

  const userId = req.params.id
  const queryOneUser = "SELECT * FROM user WHERE user = ?"

  connection.query(queryOneUser, [userId], (err, rows, fields) => {
    if (err) {
      console.log("Failed to query for users: " + err)
      res.sendStatus(500)
      res.end()
      return
    }

    console.log("I think we fetched users successfully")

    const users = rows.map((row) => {
      return {
        id: row.user,
        firstName: row.first_name,
        lastName: row.last_name
      }
    })

    res.json(users)
  })

})

app.get("/", (req, res) => {
  console.log("Responding to root route")
  res.send("Hello from ROOOOOT")
})

// POST user
app.post('/user', bodyParser, (req, res) => {
  console.log("Trying to create a new user...")
  console.log("Yoooooo");
  console.log(req.headers);
  console.log(req.body);
  const firstName = req.body.firstName
  const lastName = req.body.lastName

  const queryString = "INSERT INTO user (first_name, last_name) VALUES (?, ?)"
  getConection().query(queryString, [firstName, lastName], (err, results, fields) => {
    if (err) {
      console.log("Failed to insert user: " + err)
      res.sendStatus(500)
      return
    }

    console.log("Inserted user: " + firstName + " " + lastName)
    res.sendStatus(201)
    res.end()
  })

})


// GET users
app.get('/users', (req, res) => {
  console.log("Fetching all users")
  const connection = getConection()

  const userId = req.params.id
  const queryAllUsers = "SELECT * FROM user"
    connection.query(queryAllUsers, [userId], (err, rows, fields) => {
    if (err) {
      console.log("Failed to query for users: " + err)
      res.sendStatus(500)
      res.end()
      return
    }

    console.log("I think we fetched users successfully")

    const users = rows.map((row) => {
      return {
        id: row.user,
        firstName: row.first_name,
        lastName: row.last_name
      }
    })
    res.json(users)
  })

})


//localhost:3003
app.listen(3003, () => {
  console.log("Server is up and listening on 3003...")
})


