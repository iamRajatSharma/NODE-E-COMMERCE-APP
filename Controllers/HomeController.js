const express = require("express");
const conn = require("../DB/conn");
const HomeControllers = express.Router()

HomeControllers.get("/", (req, res) => {
    conn.query("select * from product_list order by rand() limit 9", (err, result) => {
        if (err) {
            consolr.log(err)
        }
        else {
            res.render("index", { "result": result })
        }
    })
})

module.exports = HomeControllers;