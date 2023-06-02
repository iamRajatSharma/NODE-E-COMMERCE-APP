const express = require("express")
const routes = express.Router();
const cartController = require("../Controllers/cartController")

routes.get("/cart", cartController.cart)



module.exports = routes