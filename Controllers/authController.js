let session = require("express-session")
const db = require("../DB/conn")
const jwt = require("jsonwebtoken")
const hash = require("password-hash")
const secret = "abcd"

// today date
const todayDate = () => {
    const date = new Date();
    const day = date.getDate();
    const month = date.getMonth() + 1;
    const year = date.getFullYear();
    return `${day}/${month}/${year}`
}

// display login page
const login = (req, res) => {
    res.render("login", { title: "Login || E-shop" })
}

// display signup page
const signup = (req, res) => {
    res.render("signup", { title: "Sign Up || E-shop" })
}

// display forget password page
const forget = (req, res) => {
    res.render("forget", { title: "Forget Password || E-shop" })
}

// manage login page 
const doLogin = (req, res) => {
    const email = req.body.email;
    const password = req.body.password;
    if (!email || !password) {
        return res.render("login", { "title": "Login || E-shop", "error": "All Fields Requireds", color: "danger" })
    }
    else {
        db.query("select * from user where email=?", [email], (error, rows) => {
            if (rows != "") {
                if (password == rows[0].pass) {
                    const token = jwt.sign({ email: email }, secret, { expiresIn: "24h" })
                    session = req.session
                    session.email = email
                    session.token = token
                    console.log(session.email, session.token)
                    return res.redirect("/")
                }
                else {
                    return res.render("login", { "title": "Login || E-shop", "error": "Incorrect Email OR Password", color: "danger" })
                }
            }
            else {
                return res.render("login", { "title": "Login || E-shop", "error": "Email is not found", color: "danger" })
            }
        })
    }
}

// create new account
const doSignup = (req, res) => {
    const name = req.body.name
    const email = req.body.email
    const password = req.body.pass
    const mobile = req.body.mobile

    if (!name || !email || !password || !mobile) {
        return res.render("signup", { title: "Sign Up || E-shop", msg: "All Fields Requireds", color: "danger" })
    }
    else {
        db.query("select * from user where email=? and mobile=?", [email, mobile], (error, result) => {
            if (result != "") {
                if (result[0].email == email || result[0].mobile == mobile) {
                    return res.render("signup", { title: "Sign Up || E-shop", msg: "Email OR Mobile is already exists", color: "danger" })
                }
                else {
                    db.query("insert into user(name, email, pass, mobile, open_date) values(?,?,?,?,?)", [name, email, password, mobile, todayDate()], (error, success) => {
                        return res.render("signup", { title: "Sign Up || E-shop", msg: "Account Created Succesfully", color: "success" })
                    })
                }
            }
            else {
                // const hashedpass = hash.generate(password)
                db.query("insert into user(name, email, pass, mobile, open_date) values(?,?,?,?,?)", [name, email, password, mobile, todayDate()], (error, success) => {
                    return res.render("signup", { title: "Sign Up || E-shop", msg: "Account Created Succesfully", color: "success" })
                })
            }
        })
    }
}

module.exports = {
    login, signup, forget, doLogin, doSignup
}