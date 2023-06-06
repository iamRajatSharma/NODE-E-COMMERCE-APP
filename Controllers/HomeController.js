const db = require("../DB/conn")

// display index page with some random products
const index = (req, res) => {
    db.query("select * from products order by rand() limit 3 ", (error, rows) => {
        res.render("index", { title: "Welcome To E-shop", rows: rows });
    })
}

// display contact page
const contact = (req, res) => {
    res.render("contact", { title: "Contact Us || E-shop" });
}

// display product category wise and display dynamically product data
const category = (req, res) => {
    const cat = "%" + req.query.cat + "%";
    const price = req.query.price;
    const a = db.query("select * from products where cat like ? order by selling_price = ?", [cat, price], (error, rows) => {
        res.render("category", { title: "Category || E-shop", result: rows, cat: req.query.cat, price: price });
    })

}
// save contact form data
const saveContact = (req, res) => {
    const name = req.body.name
    const email = req.body.email
    const subject = req.body.subject
    const message = req.body.message
    const date = Date.now();
    const time = Date.now();
    console.log(date + " : " + time)
    if (!name || !email || !subject || !message) {

    }
    else {
        db.query("insert into contact(name, email, subject, message, date, time) values(?,?,?,?,?,?)", [name, email, subject, message, date, time], (error, result) => {
            res.redirect("contact")
        })
    }
}

// display about us page
const about = (req, res) => {
    res.render("about", { title: "About Us || E-shop" })
}

// display FAQ's page
const faq = (req, res) => {
    res.render("faq", { title: "FAQ's || E-shop" })
}

module.exports = {
    index, contact, about, faq, saveContact, category
}