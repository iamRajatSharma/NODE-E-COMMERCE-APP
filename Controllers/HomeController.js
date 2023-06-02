const index = (req, res) => {
    res.render("index");
}

const contact = (req, res) => {
    res.render("contact");
}

const about = (req, res)=>{
    res.render("about")
}

const faq = (req, res)=>{
    res.render("faq")
}

const search = (req, res)=>{
    res.render("search")
}


module.exports = {
    index, contact, about, faq, search
}