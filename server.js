const express = require("express");
const app = express()
// require("./DB/conn")
const bodyParser = require("body-parser");

app.set("view engine", "ejs")
app.use(express.static("public"))
app.use("/", require("./Routes/homeRoutes"));
app.use("/user", require("./Routes/userRoutes"));
app.use("/", require("./Routes/authRoutes"));
app.use("/", require("./Routes/cartRoutes"));


app.listen(3001, (err) => {
    if (!err) {
        console.log("server running on PORT 3001")
    }
})
