const conn = require("../DB/conn");
var logged = "sharmarajat687@gmail.com"

address = (req, res) => {
    conn.query("select * from address where email=?", logged, (err, result) => {
        res.render("address", { "result": result })
    })
}

module.exports = { address };