const path = require("path");
const fs = require('fs');

const productsFilePath = path.join(__dirname, '../data/products.json');
const products = JSON.parse(fs.readFileSync(productsFilePath, 'utf-8'));

const productosController = {
    listado:(req, res)=>{
        

    },
    detalle: (req, res) => {
        const product = products.find((product)=> product.id == req.params.id)
        res.render("products/productDetail", { product });
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