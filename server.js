const express = require("express");
const app = express()
require("./DB/conn")
require("dotenv").config()
const bodyParser = require("body-parser");
const sessions = require('express-session');
const cookieParser = require("cookie-parser");

app.set("view engine", "ejs")
app.use(express.static("public"))
app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.json())

app.use(cookieParser());
const oneDay = 1000 * 60 * 60 * 24;
app.use(sessions({
    secret: "thisismysecrctekeyfhrgfgrfrty84fwir767",
    saveUninitialized: true,
    cookie: { maxAge: oneDay },
    resave: false
}));

app.use("/", require("./Routes/homeRoutes"));
app.use("/user", require("./Routes/userRoutes"));
app.use("/", require("./Routes/authRoutes"));
app.use("/", require("./Routes/cartRoutes"));
app.use("/", require("./Routes/productsRoutes"));


app.listen(process.env.PORT, (err) => {
    if (!err) {
        console.log(`server running on PORT ${process.env.PORT}`)
    }
})
