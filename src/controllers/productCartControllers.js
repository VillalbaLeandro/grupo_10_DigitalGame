const path = require ("path")
const productsCartControllers = {
    detalles: (req, res) => {
        res.render(path.join(__dirname, "../views/products/productCart.ejs"))
    }
}

module.exports=productsCartControllers;