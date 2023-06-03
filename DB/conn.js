var mysql = require('mysql2');
require("dotenv").config()

var conn = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    database: process.env.DB_NAME,
    insecureAuth: true,
    multipleStatements: true
});

conn.connect((err, res) => {
    if (err) {
        console.log(err)
    }
    else {
        console.log("DB Connected Successfully")
    }
});

module.exports = conn