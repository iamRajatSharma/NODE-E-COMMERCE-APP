const cart = (req, res)=>{
    res.render("cart", { title: "Cart || E-shop" })
}

const checkout = (req, res)=>{
    res.render("checkout", { title: "Checkout || E-shop" })
}

module.exports = {
    cart, checkout
}