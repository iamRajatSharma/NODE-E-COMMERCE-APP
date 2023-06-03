const address = (req, res) => {
    res.render("address", { title: "Manage Address || E-shop" })
}

const dashboard = (req, res) => {
    res.render("dashboard", { title: "Manage Dashboard || E-shop" })
}

const order = (req, res) => {
    res.render("order", { title: "Manage Order || E-shop" })
}

const profile = (req, res) => {
    res.render("profile", { title: "Manage Profile || E-shop" })
}

module.exports = {
    address, dashboard, order, profile
}