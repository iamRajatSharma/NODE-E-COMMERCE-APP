const express = require("express");
const routes = express.Router()
const authController = require("../Controllers/authController");


routes.get("/login", authController.login)

routes.get("/signup", authController.signup)

routes.get("/forget", authController.forget)



module.exports = routes;