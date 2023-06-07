const express = require("express");
const routes = express.Router()
const authController = require("../Controllers/authController");


routes.get("/login", authController.login)

routes.get("/signup", authController.signup)

routes.get("/forget", authController.forget)

routes.post("/login", authController.doLogin)

routes.post("/signup", authController.doSignup)

module.exports = routes;