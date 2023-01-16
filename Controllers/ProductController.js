const conn = require("../DB/conn");
var logged = "sharmarajat687@gmail.com"

const getProductDetails = (req, res) => {
    conn.query("select * from product_list where id=?", req.params.id, (err1, result) => {
        conn.query("select * from colors where product_id=?", req.params.id, (err2, colors) => {
            conn.query("select * from product_list where cat=? and id!=?", [result[0].cat, req.params.id], (err4, related) => {
                res.render("product-single", { result: result[0], related: related, colors: colors[0] })
            })
        })
    })
}


module.exports = { getProductDetails };