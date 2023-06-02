const address = (req, res) => {
    res.render("address")
}

const dashboard = (req, res) => {
    res.render("dashboard")
}

const order = (req, res) => {
    res.render("order")
}

const profile = (req, res) => {
    res.render("profile")
}

module.exports = {
    address, dashboard, order, profile
}