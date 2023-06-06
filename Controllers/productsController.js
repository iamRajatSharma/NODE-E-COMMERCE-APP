const db = require("../DB/conn")

// fetch all product list with all comments
const productDetails = (req, res) => {
    db.query("select * from products where id=?", [req.params.id], (error, result) => {
        db.query("select * from product_review where product_id=?", [req.params.id], (error, reviews) => {
            res.render("product-single", { "title": "Product Details", result: result[0], reviews: reviews })
        })
    })
}

const search = (req, res) => {
    const like = '%' + req.query.key + '%'
    const a = db.query("select * from products where product_name like ? or cat like ? or description like ?", [like, like, like], (error, data) => {
        console.log(data)
        res.render("search", { title: "Search || E-shop", result: data })
    })
    console.log(a.sql)

}


module.exports = {
    productDetails, search
}