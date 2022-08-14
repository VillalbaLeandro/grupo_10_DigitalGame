const path = require("path");
const productosController = {
    listado:()=>{},
    detalle: (req, res) => {
        res.render(path.join(__dirname, "../views/products/productDetail.ejs"));
    },
    crear: (req, res) => {
        res.render(path.join(__dirname, "../views/admin/createProduct.ejs"));
    },
    editar: (req, res) => {
        res.render(path.join(__dirname, "../views/admin/editProduct.ejs"));
    },
    carrito: (req, res) => {
        res.render(path.join(__dirname, "../views/products/productCart.ejs"));
    }


};
module.exports=productosController;