const login = (req, res) => {
    res.render("login", { title: "Login || E-shop" })
}

const signup = (req, res) => {
    res.render("signup", { title: "Sign Up || E-shop" })
}

const forget = (req, res) => {
    res.render("forget", { title: "Forget Password || E-shop" })
}

module.exports = {
    login, signup, forget
}