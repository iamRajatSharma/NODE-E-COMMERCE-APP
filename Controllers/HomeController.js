const conn = require("../DB/conn");


const Home = (req, res) => {
    conn.query("select * from product_list order by rand() limit 9", (err, result) => {
        if (err) {
            consolr.log(err)
        }
        else {
            res.render("index", { "result": result })
        }
    })
}

const Category = (req, res) => {
    conn.query("select * from product_list where cat=? order by mrp=?", [req.query.cat, req.query.price], (err, result) => {
        if (err) {
            console.log(err)
        }
        else {
            console.log(result)
            res.render("search", { "result": result })
        }
    })
}

const Search = (req, res) => {

    conn.query("select * from product_list where cat like ?", '%' + req.query.key + '%', (err, result) => {
        if (err) {
            console.log(err)
        }
        else {
            console.log(result)
            res.render("search", { "result": result })
        }
    })
}

const Contact = (req, res) => {
    res.render("contact")
}

const saveContact = (req, res) => {
    
}

const About = (req, res) => {
    res.render("about")
}

const Faq = (req, res) => {
    res.render("faq")
}

module.exports = { Home, Contact, About, Faq, Search, Category, saveContact };