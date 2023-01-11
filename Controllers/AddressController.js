const express = require("express");
const conn = require("../DB/conn");
const AddressControllers = express.Router()
var logged = "sharmarajat687@gmail.com"

AddressControllers.get("/address", (req, res) => {
    conn.query("select * from address where email=?", logged, (err, result) => {
        res.render("address", { "result": result })
    })
})

module.exports = AddressControllers;