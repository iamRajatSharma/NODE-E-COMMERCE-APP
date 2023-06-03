const db = require("../DB/conn")


const productDetails = (req, res) => {
    db.query("select * from products where id=?", [req.params.id], (error, result) => {
        db.query("select * from product_review where product_id=?", [req.params.id], (error, reviews) => {
            res.render("product-single", { "title": "Product Details", result: result[0], reviews: reviews })
        })
    })
}

const search = (req, res) => {
    res.render("search", { title: "Search || E-shop" })
}


module.exports = {
    productDetails, search
}