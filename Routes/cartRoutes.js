const express = require("express")
const routes = express.Router();
const cartController = require("../Controllers/cartController")

routes.get("/cart", cartController.cart)

routes.post("/addToCart", cartController.addToCart)

routes.get("/deleteCart/:id", cartController.deleteCart)

routes.get("/deleteOneItem/:id", cartController.deleteOneItem)

routes.get("/addOneItem/:id", cartController.addOneItem)

routes.get("/checkout", cartController.checkout)


module.exports = routes