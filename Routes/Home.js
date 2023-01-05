const express = require("express");
const routes = express.Router()


routes.get("/", (req, res) => {
    res.render("index")
})

routes.get("/cart", (req, res) => {
    res.render("cart")
})

routes.get("/checkout", (req, res) => {
    res.render("checkout")
})

routes.get("/order", (req, res) => {
    res.render("order")
})

routes.get("/login", (req, res) => {
    res.render("login")
})

routes.get("/signup", (req, res) => {
    res.render("signup")
})

routes.get("/forget", (req, res) => {
    res.render("forget-password")
})

module.exports = routes