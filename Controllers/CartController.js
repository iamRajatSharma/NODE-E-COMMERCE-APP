const db = require("../DB/conn")
const email = "sharmarajat687@gmail.com"

// display cart page with all carts products
const cart = (req, res) => {
    const a = db.query("select * from cart where email=?", [email], (error, result) => {
        res.render("cart", { title: "Cart || E-shop", result: result })
    })
}

// add product to cart list
const addToCart = (req, res) => {
    const product_id = req.body.pro_id
    const product_name = req.body.name
    const product_img = req.body.image
    const price = req.body.price
    const qty = 1;

    db.query("select * from cart where product_id=? and email = ?", [product_id, email], (error, result) => {
        if (result.length == 0) {
            db.query("insert into cart (product_id, product_name, product_img, price, email, qty) values(?,?,?,?,?,?)", [product_id, product_name, product_img, price, email, qty], (error, result) => {
            })
        }
        else {
            let qty = parseInt(result[0].qty) + 1;
            db.query("update cart set qty=? where product_id=? and email=? ", [qty, product_id, email], (error, result) => {
            })
        }
    })
    return res.redirect("cart")
}


// delete one item from the cart
const deleteCart = (req, res) => {
    db.query("delete from cart where email=? and product_id=?", [email, req.params.id], (error, result) => {
        res.redirect("/cart")
    })
}

// decrease one quantity from the cart list
const deleteOneItem = (req, res) => {
    db.query("select * from cart where product_id=? and email = ?", [req.params.id, email], (error, result) => {
        if (result[0].qty > 1) {
            const qty1 = result[0].qty - 1;
            const a = db.query("update cart set qty=? where email=? and product_id=?", [qty1, email, req.params.id], (error, result) => {
                res.redirect("/cart")
            })
        }
        else {
            res.redirect("/cart")
        }
    })
}


// increase one quantity from the cart list
const addOneItem = (req, res) => {
    db.query("select * from cart where product_id=? and email = ?", [req.params.id, email], (error, result) => {
        if (result.length > 0) {
            const qty1 = parseInt(result[0].qty) + 1;
            const a = db.query("update cart set qty=? where email=? and product_id=?", [qty1, email, req.params.id], (error, result) => {
                res.redirect("/cart")
            })
        }
        else {
            res.redirect("/cart")
        }
    })
}

// display checkout page
const checkout = (req, res) => {
    res.render("checkout", { title: "Checkout || E-shop" })
}

module.exports = {
    cart, checkout, addToCart, deleteCart, deleteOneItem, addOneItem
}