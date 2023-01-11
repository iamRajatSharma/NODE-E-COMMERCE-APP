const express = require("express");
const conn = require("../DB/conn");
const CartControllers = express.Router()
var logged = "sharmarajat687@gmail.com"

CartControllers.get("/cart", (req, res) => {
    conn.query("select * from cart where email=?", logged, (err, result) => {
        res.render("cart", { "result": result })
    })
})

module.exports = CartControllers;