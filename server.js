const express = require("express");
const app = express()
require("./DB/conn")
const cors = require("cors")
const bodyParser = require("body-parser");

app.use(express.json())
app.use(bodyParser.urlencoded({
    extended: true
}));

app.use(cors())

app.set("view engine", "ejs")
app.use(express.static(__dirname + "/public"))
app.use("/", require("./Routes/Home"))
app.use("/product", require("./Routes/Products"))


app.listen(3001, (err) => {
    if (!err) {
        console.log("server running")
    }
})
