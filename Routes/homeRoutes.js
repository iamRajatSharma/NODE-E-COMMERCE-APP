const express = require("express");
const routes = express.Router()
const homeController = require("../Controllers/homeController");

// handle get request

routes.get("/", homeController.index)

routes.get("/contact", homeController.contact)

routes.get("/about", homeController.about)

routes.get("/faq", homeController.faq)

routes.get("/category", homeController.category)

// handle post requests

routes.post("/contact", homeController.saveContact)

module.exports = routes;