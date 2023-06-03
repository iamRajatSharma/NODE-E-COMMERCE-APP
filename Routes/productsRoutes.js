const express = require("express");
const routes = express.Router()
const productController = require("../Controllers/productsController")

routes.get("/details/:id", productController.productDetails)

routes.get("/search", productController.search)


module.exports = routes;