const conn = require("../DB/conn");
var logged = "sharmarajat687@gmail.com"

// fetch all cart items
const Cart = (req, res) => {
    conn.query("select * from cart where email=?", logged, (err, result) => {
        res.render("cart", { "result": result })
    })
}

// add item to cart
const AddToCart = (req, res) => {
    const product_id = req.body.pro_id;
    const name = req.body.name
    const price = req.body.price
    const image = req.body.image
    const color = req.body.color
    const date = new Date();
    conn.query("select * from cart where email=? and product_id=? and color=?", [logged, product_id, color], (err, result) => {
        if (result != '') {
            let qty = parseInt(result[0].qty) + 1
            conn.query("update cart set qty=? where product_id=? and email=? and color=?", [qty, product_id, logged, color], (err, data) => {
                if (err) console.log(err)
                else {
                    res.redirect("/cart")
                }
            })
        }
        else {
            const data = [product_id, name, image, price, color, logged, 1, 1, date]
            conn.query("insert into cart(product_id, product_name, product_img, price, color, email, qty, status, date1) values(?,?,?,?,?,?,?,?,?)", data, (err, data) => {
                if (err) console.log(err)
                else {
                    res.redirect("/cart")
                }
            })
        }
    })
}

// delete complete cart
const DeleteCaty = (req, res) => {
    conn.query("delete from cart where email=? and id=?", [logged, req.params.id], (err, result) => {
        res.redirect("/cart")
    })
}

// increase cart item by 1
const AddOneItem = (req, res) => {
    let product_id = req.params.id
    let color_id = req.params.color
    conn.query("select * from cart where email=? and product_id=? and color=? ", [logged, product_id, color_id], (err, result) => {
        let qty = parseInt(result[0].qty) + 1
        conn.query("update cart set qty=? where email=? and product_id=? and color=? ", [qty, logged, product_id, color_id], (err, result) => {
            res.redirect("/cart")
        })
    });
}

// delete cart item by 1
const DeleteOneItem = (req, res) => {
    let product_id = req.params.id
    let color_id = req.params.color
    conn.query("select * from cart where email=? and product_id=? and color=? ", [logged, product_id, color_id], (err, result) => {
        if (result[0].qty > 1) {
            console.log(result)
            let qty = parseInt(result[0].qty) - 1
            conn.query("update cart set qty=? where email=? and product_id=? and color=?", [qty, logged, product_id, color_id], (err, result) => {
                res.redirect("/cart")
            })
        }
        else {
            res.redirect("/cart")
        }
    });
}

// display checkout page
const Checkout = (req, res) => {
    res.render("checkout")
}


module.exports = { Cart, Checkout, AddToCart, DeleteCaty, AddOneItem, DeleteOneItem };