const express = require("express");
const app = express()
require("./DB/conn")
const cors = require("cors")
const bodyParser = require("body-parser");
var session = require("express-session");

// const cookieParser = require("cookie-parser");
// var sessions = require('express-session');

app.use(express.json())
app.use(bodyParser.urlencoded({
    extended: true
}));

app.use(cors())

app.set("view engine", "ejs")
app.use(express.static(__dirname + "/public"))
app.use("/", require("./Routes/Home"))
app.use("/product", require("./Routes/Products"))

// const oneDay = 1000 * 60 * 60 * 24;
// app.use(sessions({
//     secret: "thisismysecrctekeyfhrgfgrfrty84fwir767",
//     saveUninitialized:true,
//     cookie: { maxAge: oneDay },
//     resave: false 
// }));

const oneDay = 1000 * 60 * 60 * 24;

//session middleware
app.use(session({
    secret: "thisismysecrctekeyfhrgfgrfrty84fwir767",
    saveUninitialized:true,
    cookie: { maxAge: oneDay },
    resave: false
}));


app.listen(3001, (err) => {
    if (!err) {
        console.log("server running on PORT 3001")
    }
})
