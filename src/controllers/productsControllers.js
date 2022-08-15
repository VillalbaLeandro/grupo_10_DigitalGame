const path = require("path");
const productosController = {
    listado:()=>{},
    detalle: (req, res) => {
        res.render("products/productDetail");
    },
    crear: (req, res) => {
        res.render("admin/createProduct.ejs");
    },
    editar: (req, res) => {
        res.render("admin/editProduct.ejs");
    },
    carrito: (req, res) => {
        res.render("products/productCart");
    }


};
module.exports=productosController;