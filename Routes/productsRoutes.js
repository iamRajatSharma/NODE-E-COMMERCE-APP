const express = require("express");
const routes = express.Router()

routes.get("/",(req, res)=>{
    res.end("Hello World")
})

module.exports = routes;