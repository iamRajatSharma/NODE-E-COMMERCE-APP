const db = require("../DB/conn")
const index = (req, res) => {
    db.query("select * from products order by rand() limit 3 ", (error, rows) => {
        res.render("index", { title: "Welcome To E-shop", rows: rows });
    })

}

const contact = (req, res) => {
    res.render("contact");
}

const about = (req, res) => {
    res.render("about")
}

const faq = (req, res) => {
    res.render("faq")
}

const search = (req, res) => {
    res.render("search")
}


module.exports = {
    index, contact, about, faq, search
}