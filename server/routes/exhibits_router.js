// will contain all of my exhibits routes
const express = require('express')
const exhibits_router = express.Router()
const mysql = require('mysql')
const bodyParser = require('body-parser').json();
const cors = require('cors');

function getMuseDBConnection() {
    return mysql.createConnection({
      host: 'localhost',
      port: 3306,
      user: 'root',
      password: '19mariamaria',
      database: 'musedb',
      multipleStatements: true    
    })
  }

exhibits_router.use(cors())

// GET exhibits based on exhibitID
exhibits_router.get('/exhibits/:id', (req, res) => {
    console.log("Fetching exhibit with id " + req.params.id)
    const connection = getMuseDBConnection()
    const exhibitID = req.params.id
    const queryExhibitID = "SELECT exhibit.exhibitID AS exhibitID, exhibit.name AS exhibit, type, description, exhibit.photo AS photo, creator.name AS creator, creator.creatorID AS creatorID FROM exhibit JOIN creator_creates_exhibit ON exhibit.exhibitID = creator_creates_exhibit.exhibitID JOIN creator ON creator.creatorID = creator_creates_exhibit.creatorID WHERE exhibit.exhibitID = ?"
      connection.query(queryExhibitID, [exhibitID], (err, rows) => {
      if (err) {
        console.log("Failed to query for exhibit: " + err)
        res.sendStatus(500)
        res.end()
        return
      }
      console.log("I think we fetched exhibit with ID: " + req.params.id)
      const exhibits = rows.map((row) => {
        return {
          id: row.exhibitID,
          name: row.exhibit,
          type: row.type,
          description: row.description,
          photo: row.photo,
          exhibitionID: row.exhibitionID,
          creator: row.creator,
          creatorID: row.creatorID
        }
      })
      res.setHeader('Content-Type', 'application/json')
      res.setHeader('Access-Control-Allow-Origin', 'http://localhost:3000')
      res.json(exhibits)
    })
  })
  
  
  // GET all exhibits
  exhibits_router.get('/exhibits', (req, res) => {
    console.log("Fetching all exhibits")
    const connection = getMuseDBConnection()
    const name = req.query.name

    const queryAllExhibits = `SELECT exhibit.exhibitID AS exhibitID, exhibit.name AS exhibit, type, description, exhibit.photo AS photo, creator.name AS creator, creator.creatorID AS creatorID FROM exhibit JOIN creator_creates_exhibit ON exhibit.exhibitID = creator_creates_exhibit.exhibitID JOIN creator ON creator.creatorID = creator_creates_exhibit.creatorID`
    const queryExhibitName = `SELECT exhibit.exhibitID AS exhibitID, exhibit.name AS exhibit, type, description, exhibit.photo AS photo, creator.name AS creator, creator.creatorID AS creatorID FROM exhibit JOIN creator_creates_exhibit ON exhibit.exhibitID = creator_creates_exhibit.exhibitID JOIN creator ON creator.creatorID = creator_creates_exhibit.creatorID WHERE exhibit.name LIKE "%${name}%"`
   
    if (name === undefined || name === '') {
      connection.query(queryAllExhibits, (err, rows) => {
        if (err) {
          console.log("Failed to query for exhibit: " + err)
          res.sendStatus(500)
          res.end()
          return
        }
        console.log("I think we fetched exhibits successfully")
        const exhibits = rows.map((row) => {
          return {
            id: row.exhibitID,
            name: row.exhibit,
            type: row.type,
            description: row.description,
            photo: row.photo,
            exhibitionID: row.exhibitionID,
            creator: row.creator,
            creatorID: row.creatorID
          }
        })
        res.setHeader('Access-Control-Allow-Origin', '*')
        res.setHeader('Content-Type', 'application/json')
        res.json(exhibits)
      })
    }
    else {
      connection.query(queryExhibitName, (err, rows) => {
        if (err) {
          console.log("Failed to query for exhibit: " + err)
          res.sendStatus(500)
          res.end()
          return
        }
        console.log("I think we fetched exhibits successfully")
        const exhibits = rows.map((row) => {
          return {
            id: row.exhibitID,
            name: row.exhibit,
            type: row.type,
            description: row.description,
            photo: row.photo,
            exhibitionID: row.exhibitionID,
            creator: row.creator,
            creatorID: row.creatorID
          }
        })
        res.setHeader('Access-Control-Allow-Origin', '*')
        res.setHeader('Content-Type', 'application/json')
        res.json(exhibits)
      })
    }
  })


// POST exhibit
exhibits_router.post('/exhibit', bodyParser, (req, res) => {
  console.log("Trying to create a new exhibit...")
  console.log(req.headers);
  console.log(req.body);
  
  const exhibitID = req.body.exhibitID
  const name = req.body.name
  const type = req.body.type
  const description = req.body.description
  const photo = req.body.photo
  const exhibitionID = req.body.exhibitionID
  const creatorID = req.body.creatorID

  const queryString = `INSERT INTO exhibit (exhibitID, name, type, description, photo, exhibitionID) VALUES (?, ?, ?, ?, ?, ?);
                       INSERT INTO creator_creates_exhibit (exhibitID, creatorID) VALUES (?, ?);`
  getMuseDBConnection().query(queryString, [exhibitID, name, type, description, photo, exhibitionID, exhibitID, creatorID], (err, results, fields) => {
    if (err) {
      console.log("Failed to insert exhibit: " + err)
      // res.statusCode = 500
      res.json({status: '500', message: "Failed to insert exhibit. " + err})
      return
    }

    console.log("Inserted exhibit: " + name)
    res.setHeader('Content-Type', 'application/json')
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE, OPTIONS");
    res.setHeader("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept, Cache-Control");
    res.statusCode = 201
    res.json({status: '201', message: "Inserted exhibit: " + name})
    res.end()
  })

})


  module.exports = exhibits_router