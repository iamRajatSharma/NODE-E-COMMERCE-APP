const login = (req, res)=>{
    res.render("login")
}

const signup = (req, res)=>{
    res.render("signup")
}

const forget = (req, res)=>{
    res.render("forget")
}

module.exports = {
    login, signup, forget
}