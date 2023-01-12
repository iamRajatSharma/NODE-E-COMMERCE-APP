const conn = require("../DB/conn");
var logged = "sharmarajat687@gmail.com"

const Cart = (req, res) => {
    conn.query("select * from cart where email=?", logged, (err, result) => {
        res.render("cart", { "result": result })
    })
}


const AddToCart = (req, res) => {
    res.send(req.body)
    // conn.query("select * from cart where email=?", logged, (err, result) => {
    //     res.render("cart", { "result": result })
    // })
}


const Checkout = (req, res) => {
    res.render("checkout")
}


module.exports = { Cart, Checkout, AddToCart };