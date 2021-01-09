// Gets the connection with the DB. 
const express = require('express')
const mysql = require('mysql')

module.exports = function() {
    this.getMuseDBConnection = function() {
        return mysql.createConnection({
        host: 'localhost',
        port: 3306,                       // Specify the port of your database system
        user: 'root',                     // Specify your username
        password: '19mariamaria',         // Specify your password
        database: 'musedb',
        multipleStatements: true    
        })
    }
}
