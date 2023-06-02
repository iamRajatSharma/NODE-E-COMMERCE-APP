const express = require("express");
const routes = express.Router()
const homeController = require("../Controllers/homeController");


routes.get("/", homeController.index)

routes.get("/contact", homeController.contact)

routes.get("/about", homeController.about)

routes.get("/faq", homeController.faq)

routes.get("/search", homeController.search)


module.exports = routes;