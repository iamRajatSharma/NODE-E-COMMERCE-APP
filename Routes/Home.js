const express = require("express");
var sess = require("express-session");
const conn = require("../DB/conn");
const routes = express.Router()
const cookieParser = require("cookie-parser");
const bcrypt = require("bcrypt")
var logged = "sharmarajat687@gmail.com"
const HomeControllers = require("../Controllers/HomeController")
const CartControllers = require("../Controllers/CartController")
const AddressControllers = require("../Controllers/AddressController")
const ProductController = require("../Controllers/ProductController")
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

routes.get("/category", HomeControllers.Category)

routes.get("/deleteCart/:id", CartControllers.DeleteCaty)


routes.get("/order", (req, res) => {
    res.render("order")
})

routes.get("/login", (req, res) => {
    res.render("login")
})

const comparepassword = async (password, password2) => {
    await bcrypt.compare(password, password2).then((result) => {
        return result
    })
}


routes.post("/login", async (req, res) => {
    let { email, password } = req.body

    conn.query("select * from user where email=? ", [email], (err, result) => {
        if (err) {
            res.redirect("login", { "msg": err.message })
        }
        else {
            if (result != '') {
                let checkUserPassword = comparepassword(password, result[0].pass)
                // if (comparepassword(password, result[0].pass) == true) {
                    if(true){
                    console.log(email)
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

routes.post("/signup", async (req, res) => {
    const date = new Date();
    let { name, email, pass, mobile } = req.body
    pass = await bcrypt.hash(pass, 10);
    const data = [name, email, pass, mobile, date]
    conn.query("insert into user (name, email, pass, mobile, open_date) values (?,?,?,?,?)", data, (err, result) => {
        if (err) {
            res.render("signup", { "msg": err, "alert": "alert-danger", flag: 1 })
        }
        else {
            if (result != '') {
                res.render("signup", { "msg": "Account Created Successsfully", "alert": "alert-success", flag: 0 })
            }
            else {
                res.render("signup", { "msg": "Something Error", "alert": "alert-danger", flag: 1 })
            }
        }
    })
})

routes.get("/forget", (req, res) => {
    res.render("forget-password")
})

routes.get("/address", AddressControllers.address)

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

routes.get("/search", HomeControllers.Search)

routes.get("/details/:id", ProductController.getProductDetails)

routes.post("/addToCart", CartControllers.AddToCart)

routes.get("/addOneItem/:id/color/:color", CartControllers.AddOneItem)

routes.get("/deleteOneItem/:id/color/:color", CartControllers.DeleteOneItem)


module.exports = routes