var mysql = require('mysql2');
var conn = mysql.createConnection({
    host: 'localhost',
    user: 'localhost',
    password: 'root',
    database: 'e-commerce',
    insecureAuth: true,
    multipleStatements: true
});

conn.connect((err, res) => {
    if (err) {
        console.log(err)
    }
    else {
        console.log("DB Success")
    }
});

module.exports = conn