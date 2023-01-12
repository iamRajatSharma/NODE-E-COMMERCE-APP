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

const Contact = (req, res) => {
    res.render("contact")
}

const About = (req, res) => {
    res.render("about")
}

const Faq = (req, res) => {
    res.render("faq")
}

module.exports = { Home, Contact, About, Faq };