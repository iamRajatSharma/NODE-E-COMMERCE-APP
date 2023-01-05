const conn = require("../DB/conn")
const express = require("express");
const routes = express.Router()


routes.get("/fetch", (req, res) => {
    conn.query("select * from user", (err, result) => {
        res.send(result)
    })
})


module.exports = routes