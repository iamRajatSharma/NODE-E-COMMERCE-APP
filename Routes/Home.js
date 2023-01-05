const express = require("express");
const conn = require("../DB/conn");
const routes = express.Router()

routes.get("/", (req, res) => {
    res.render("index")
})

routes.get("/fetch", (req, res) => {
    let email = "sharmarajat687@gmail.com"
    conn.query("select * from user where email=?", [email], (err, result) => {
        res.send(result)
    })
})

routes.get("/cart", (req, res) => {
    res.render("cart")
})

routes.get("/checkout", (req, res) => {
    res.render("checkout")
})

routes.get("/contact", (req, res) => {
    res.render("contact")
})

routes.get("/about", (req, res) => {
    res.render("about")
})

routes.get("/order", (req, res) => {
    res.render("order")
})

routes.get("/login", (req, res) => {
    res.render("login")
})

routes.post("/login", async (req, res) => {
    const { email, password } = req.body
    conn.query("select * from user where email=? ", [email], (err, result) => {
        if (err) {
            res.redirect("login", { "msg": err.message })
        }
        else {
            if (result != '') {
                if (result.pass === password) {
                    res.redirect("/")
                }
                else {
                    res.render("login", { "msg": "Incorrect Email/Password", flag: 1 })
                }
            }
            else {
                res.render("login", { "msg": "No Data Found", flag: 1 })
            }
        }
    })
})

routes.get("/signup", (req, res) => {
    res.render("signup")
})

routes.post("/signup", (req, res) => {
    const { name, email, pass, mobile } = req.body
    const data = [name, email, pass, mobile]
    console.log(data)
    conn.query("insert into user (name, email, pass, mobile) values (?,?,?,?)", data, (err, result)=>{
        console.log(err.message)
    })
})

routes.get("/forget", (req, res) => {
    res.render("forget-password")
})

routes.get("/faq", (req, res) => {
    res.render("faq")
})

routes.get("/address", (req, res) => {
    res.render("address")
})

routes.get("/dashboard", (req, res) => {
    res.render("dashboard")
})

routes.get("/order", (req, res) => {
    res.render("orders")
})

routes.get("/profile", (req, res) => {
    res.render("profile-details")
})

routes.get("/product_list", (req, res) => {
    res.render("list")
})

module.exports = routes