const db = require("../DB/conn")

const index = (req, res) => {
    db.query("select * from products order by rand() limit 3 ", (error, rows) => {
        res.render("index", { title: "Welcome To E-shop", rows: rows });
    })

}

const contact = (req, res) => {
    res.render("contact", { title: "Contact Us || E-shop" });
}

const about = (req, res) => {
    res.render("about", { title: "About Us || E-shop" })
}

const faq = (req, res) => {
    res.render("faq", { title: "FAQ's || E-shop" })
}

module.exports = {
    index, contact, about, faq
}