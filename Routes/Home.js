const express = require("express");
var sess = require("express-session");
const conn = require("../DB/conn");
const routes = express.Router()
const cookieParser = require("cookie-parser");
var logged = "sharmarajat687@gmail.com"
const HomeControllers = require("../Controllers/HomeController")
const CartControllers = require("../Controllers/CartController")
const AddressControllers = require("../Controllers/AddressController")
// const oneDay = 1000 * 60 * 60 * 24;
// routes.use(sess({
//     secret: "thisismysecrctekeyfhrgfgrfrty84fwir767",
//     saveUninitialized: true,
//     cookie: { maxAge: oneDay },
//     resave: true
// }));

routes.get("/", HomeControllers.Home)

routes.get("/contact", HomeControllers.Contact)

routes.get("/about", HomeControllers.About)

routes.get("/faq", HomeControllers.Faq)

routes.get("/cart", CartControllers.Cart)

routes.get("/checkout", CartControllers.Checkout)

// routes.get("/fetch", (req, res) => {
//     let email = "sharmarajat687@gmail.com"
//     conn.query("select * from user where email=?", [email], (err, result) => {
//         res.send(result)
//     })
// })




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
                if (result[0].pass == password) {
                    // sess = req.session;
                    // sess.email = req.body.email;
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
    const date = new Date();
    const { name, email, pass, mobile } = req.body
    const data = [name, email, pass, mobile, date]
    conn.query("insert into user (name, email, pass, mobile, open_date) values (?,?,?,?,?)", data, (err, result) => {
        if (err) {
            console.log(err)
        }
        else {
            if (result != '') {
                res.render("signup", { "msg": "Account Created Successsfully", "alert": "alert-success", flag: 0 })
            }
            else {
                res.render("signup", { "msg": "Something Error", "alert": "alert-success", flag: 1 })
            }
        }
    })
})

routes.get("/forget", (req, res) => {
    res.render("forget-password")
})

routes.get("/address", AddressControllers)

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

routes.get("/search/:key", async (req, res) => {
    res.render("search")
})

routes.get("/details/:id", (req, res) => {
    conn.query("select * from product_list where id=?", req.params.id, (err1, result) => {
        conn.query("select * from colors where product_id=?", req.params.id, (err2, colors) => {
            conn.query("select * from size where product_id=?", req.params.id, (err3, size) => {
                conn.query("select * from product_list where cat=? and id!=?", [result[0].cat, req.params.id], (err4, related) => {
                    console.log(size)
                    res.render("product-single", { result: result[0], related: related, colors: colors[0], size: size })
                })
            })
        })
    })
})

routes.post("/addToCart", CartControllers.AddToCart)

module.exports = routes