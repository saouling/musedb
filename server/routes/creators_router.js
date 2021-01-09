// will contain all of my exhibits routes
const express = require('express')
const creators_router = express.Router()
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

// GET exhibits based on exhibitID
creators_router.get('/creators/:id', (req, res) => {
    console.log("Fetching creator with id " + req.params.id)
    const connection = getMuseDBConnection()
    const creatorID = req.params.id
    const queryCreatorWithID = "SELECT * FROM musedb.creator WHERE creatorID = ?;"
      connection.query(queryCreatorWithID, [creatorID], (err, rows) => {
      if (err) {
        console.log("Failed to query for creator: " + err)
        res.sendStatus(500)
        res.end()
        return
      }
      console.log("I think we fetched creator with ID: " + req.params.id)
      const creators = rows.map((row) => {
        return {
            id: row.creatorID,
            name: row.name,
            bio: row.bio,
            nationality: row.nationality,
            photo: row.photo,
          }
        })
        res.setHeader('Content-Type', 'application/json')
        res.setHeader('Access-Control-Allow-Origin', 'http://localhost:3000')
        res.json(creators)

    })
  })
  
  
  // GET all creators with basic info 
  creators_router.get('/creators', (req, res) => {
    console.log("Fetching all creators")
    const connection = getMuseDBConnection()
    const name = req.query.name

    const queryAllCreators = "SELECT * FROM musedb.creator;"
    const queryCreatorName = `SELECT * FROM creator WHERE creator.name LIKE "%${name}%"`

    if (name === undefined || name === '') {
      connection.query(queryAllCreators, (err, rows) => {
      if (err) {
        console.log("Failed to query for creator: " + err)
        res.sendStatus(500)
        res.end()
        return
      }
      console.log("I think we fetched creators successfully")
      const creators = rows.map((row) => {
        return {
          id: row.creatorID,
          name: row.name,
          bio: row.bio,
          nationality: row.nationality,
          photo: row.photo,
        }
      })
      res.setHeader('Access-Control-Allow-Origin', 'http://localhost:3000')
      res.setHeader('Content-Type', 'application/json')
      res.json(creators)
      })
    }
    else {
      connection.query(queryCreatorName, (err, rows) => {
        if (err) {
          console.log("Failed to query for creator with name : " + name + ". Error info: " + err)
          res.sendStatus(500)
          res.end()
          return
        }
        console.log("I think we fetched creators with name " + name+ " successfully")
        const creators = rows.map((row) => {
          return {
            id: row.creatorID,
            name: row.name,
            bio: row.bio,
            nationality: row.nationality,
            photo: row.photo,
          }
        })
        res.setHeader('Access-Control-Allow-Origin', 'http://localhost:3000')
        res.setHeader('Content-Type', 'application/json')
        res.json(creators)
        })
    }
  })


  // GET all exhibits of a creator (providing creatorID) 
creators_router.get('/exhibits_of_creator/:id', (req, res) => {
    console.log("Fetching exhibits of creator with id " + req.params.id)
    const connection = getMuseDBConnection()
    const creatorID = req.params.id
    const queryCreatorWithID = `SELECT exhibit.exhibitID AS exhibitID, exhibit.name AS exhibit, type, description, exhibit.photo AS photo, creator.name AS creator 
                                FROM exhibit JOIN creator_creates_exhibit ON exhibit.exhibitID = creator_creates_exhibit.exhibitID 
                                JOIN creator ON creator.creatorID = creator_creates_exhibit.creatorID 
                                WHERE creator.creatorID = ?;`
      connection.query(queryCreatorWithID, [creatorID], (err, rows) => {
      if (err) {
        console.log("Failed to query for creator: " + err)
        res.sendStatus(500)
        res.end()
        return
      }
      console.log("I think we fetched exhibits of creator with ID: " + req.params.id)
      const exhibits_of_creator = rows.map((row) => {
        return {
            id: row.exhibitID,
            name: row.exhibit,
            type: row.type,
            description: row.description,
            photo: row.photo,
            exhibitionID: row.exhibitionID,
            creator: row.creator
          }
        })
        res.setHeader('Content-Type', 'application/json')
        res.setHeader('Access-Control-Allow-Origin', 'http://localhost:3000')
        res.json(exhibits_of_creator)
    })
  })

  module.exports = creators_router