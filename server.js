const express = require("express");
const app = express()


app.set("view engine", "ejs")
app.use(express.static(__dirname + "/public"))

app.get("/", (req, res) => {
    res.render("index")
})

app.get("/cart", (req, res) => {
    res.render("cart")
})

app.get("/checkout", (req, res) => {
    res.render("checkout")
})

app.get("/order", (req, res) => {
    res.render("order")
})

app.get("/login", (req, res) => {
    res.render("login")
})

app.get("/signup", (req, res) => {
    res.render("signup")
})

app.get("/forget", (req, res) => {
    res.render("forget-password")
})



app.listen(3000, (err) => {
    if (!err) {
        console.log("server running")
    }
})