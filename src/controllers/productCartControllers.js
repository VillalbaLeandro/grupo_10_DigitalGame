const path = require ("path")
const productsCartControllers = {
    detalles: (req, res) => {
        res.sendFile(path.join(__dirname, "../views/products/productCart.html"))
    }
}

module.exports=productsCartControllers;