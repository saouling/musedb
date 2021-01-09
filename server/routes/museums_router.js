// will contain all of my museums routes
const express = require('express')
const cors = require('cors');
const museums_router = express.Router()
const mysql = require('mysql')
const bodyParser = require('body-parser').json();

function getMuseDBConnection() {
    return mysql.createConnection({
      host: 'localhost',
      port: 3306,
      user: 'root',
      password: '19mariamaria',
      database: 'musedb'    
    })
  }

  museums_router.use(cors())

// GET museums
museums_router.get('/museums', (req, res) => {
    console.log("Fetching museums")
    console.log(req.query.name)
    const connection = getMuseDBConnection()
    const name = req.query.name

    const queryAllMuseums = "SELECT * FROM museum"
    const queryMuseumName = `SELECT * FROM museum WHERE museum.name LIKE "%${name}%"`
    
    if (name === undefined || name === '') {
      connection.query(queryAllMuseums, (err, rows) => {
      if (err) {
        console.log("Failed to query for museums: " + err)
        res.sendStatus(500)
        res.end()
        return
      }
      console.log("I think we fetched museums successfully")
      const museums = rows.map((row) => {
        return {
          id: row.museumID,
          name: row.name,
          type: row.type,
          description: row.description,
          photo: row.image
        }
      })
      res.setHeader('Content-Type', 'application/json')
      res.setHeader('Access-Control-Allow-Origin', 'http://localhost:3000')
      res.json(museums)
    })
    }
    else {
      connection.query(queryMuseumName, (err, rows) => {
        if (err) {
          console.log("Failed to query for museums with name " + name +  ": " + err)
          res.sendStatus(500)
          res.end()
          return
        }
        console.log("I think we fetched museums with name: " + name)
        const museums = rows.map((row) => {
          return {
            id: row.museumID,
            name: row.name,
            type: row.type,
            description: row.description,
            photo: row.image
          }
        })
        res.setHeader('Content-Type', 'application/json')
        res.setHeader('Access-Control-Allow-Origin', 'http://localhost:3000')
        res.json(museums)
      }) 
    }

  })
  
  // GET museums based on museumID
  museums_router.get('/museums/:id', (req, res) => {
    console.log("Fetching museum with id " + req.params.id)
    const connection = getMuseDBConnection()
    const museumID = req.params.id
    const queryMuseumID = "SELECT * FROM museum WHERE museumID = ?"
      connection.query(queryMuseumID, [museumID], (err, rows) => {
      if (err) {
        console.log("Failed to query for museum: " + err)
        res.sendStatus(500)
        res.end()
        return
      }
      console.log("I think we fetched museum with ID: " + req.params.id)
      const museums = rows.map((row) => {
        return {
          id: row.museumID,
          name: row.name,
          type: row.type,
          description: row.description,
          photo: row.image,
          address: row.address,
          email: row.email,
          phone: row.phone,
          ownership: row.ownership,
          annualNumberOfVisitors: row.annuaNumberlOfVisitors,
          staff: row.staff,
          website: row.website,
          cityID: row.cityID,
          description: row.description
        }
      })
      res.setHeader('Content-Type', 'application/json')
      res.setHeader('Access-Control-Allow-Origin', 'http://localhost:3000')
      res.json(museums)
    })
  })

  const queryMuseumName = `SELECT * FROM museum WHERE museum.name LIKE "%?%"`




    // GET museum's tickets and schedules based on museumID
    museums_router.get('/museum_tickets_schedules/:id', (req, res) => {
      console.log("Fetching museum schedules and tickets with id " + req.params.id)
      const connection = getMuseDBConnection()
      const museumID = req.params.id
      const queryMuseumID = "SELECT * FROM musedb.tickets_and_schedules_of_museum WHERE museumID = ?;"
        connection.query(queryMuseumID, [museumID], (err, rows) => {
        if (err) {
          console.log("Failed to query for museum: " + err)
          res.sendStatus(500)
          res.end()
          return
        }
        console.log("I think we fetched museum_tickets_schedules for museum with ID: " + req.params.id)
        const museum_tickets_schedules = rows.map((row) => {
          return {
            id: row.museumID,
            name: row.museum,
            visitorType: row.visitor_type,
            price: row.description,
            currenct: row.image,
            schedule: row.schedule,
            day: row.day,
            from: row.from,
            to: row.to
          }
        })
        res.setHeader('Content-Type', 'application/json')
        res.setHeader('Access-Control-Allow-Origin', 'http://localhost:3000')
        res.json(museum_tickets_schedules)
      })
    })


    // POST museum
museums_router.post('/museum', bodyParser, (req, res) => {
  console.log("Trying to create a new museum...")
  console.log(req.headers);
  console.log(req.body);
  
  const museumID = req.body.museumID
  console.log('museumID: ', museumID)
  const name = req.body.name
  const type = req.body.type
  const description = req.body.description
  const image = req.body.image
  const address = req.body.address
  const email = req.body.email
  const phone = req.body.phone
  const ownership = req.body.ownership
  const annualNumberOfVisitors = req.body.annualNumberlOfVisitors
  const staff = req.body.staff 
  const website = req.body.website
  const cityID = req.body.cityID
  console.log('cityID: ', cityID)


  const queryString = `INSERT INTO museum (museumID, name, type, address, email, phone, ownership, annuaNumberlOfVisitors, staff, website, cityID, description, image) 
                      VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);`
  getMuseDBConnection().query(queryString, [museumID, name, type, address, email, phone, ownership, annualNumberOfVisitors, staff, website, cityID, description, image], (err, results, fields) => {
    if (err) {
      console.log("Failed to insert museum: " + err)
      res.statusCode = 500
      res.json({status: '500', message: "Failed to insert museum. " + err})
      return
    }

    console.log("Inserted museum: " + name)
    res.setHeader('Content-Type', 'application/json')
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE, OPTIONS");
    res.setHeader("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept, Cache-Control");
    res.statusCode = 201
    res.json({status: '201', message: "Inserted museum: " + name})
    // res.end()
  })

})

module.exports = museums_router