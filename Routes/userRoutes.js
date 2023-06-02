const express = require("express");
const routes = express.Router()
const userRoutes = require("../Controllers/userController");


routes.get("/address", userRoutes.address)

routes.get("/dashboard", userRoutes.dashboard)

routes.get("/order", userRoutes.order)

routes.get("/profile", userRoutes.profile)



module.exports = routes;