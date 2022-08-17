const path = require("path");
const fs = require('fs');

const productsFilePath = path.join(__dirname, '../data/products.json');
const products = JSON.parse(fs.readFileSync(productsFilePath, 'utf-8'));

const productosController = {
    listado: (req, res) => {


    },
    detalle: (req, res) => {
        const product = products.find((product) => product.id == req.params.id)
        res.render("products/productDetail", { product });
    },
    crear: (req, res) => {
        res.render("admin/createProduct.ejs");
    },
    store: (req, res) => {

        const productsClone = products
        const newProduct = {
            id: products[products.length - 1].id + 1,
            name: req.body.nombre,
            compatibility: req.body.compatibility,
            gender: req.body.gender,
            players: req.body.players,
            price: req.body.price,
            language: req.body.language,
            releaseData: req.body.releaseData,
            img: req.body.img,
            fullName: req.body.fullName,
            description: req.body.description,
            capture1: req.body.capture1,
            capture2: req.body.capture2,
            capture3: req.body.capture3,
            capture4: req.body.capture4,
            video: req.body.video,
            discount: req.body.discount,
            freeShipping: req.body.freeShipping,
            categori: "",
        }

        productsClone.push(newProduct);
        fs.writeFileSync(productsFilePath, JSON.stringify(productsClone, null, "  "));
        // // GUARDARLA   
        // // leer que cosas ya habia
        // let archivoProduct = fs.readFileSync("products.json", { encoding: "utf-8" });
        // let product;
        // if (!archivoProduct) {
        //     product = [];
        // } else {
        //     product = JSON.parse(archivoProduct);
        // }
        // product.push(newProduct);

        // usuariosJson = JSON.stringify(product);
        // fs.writeFileSync("products.json", usuariosJson);

        res.redirect("/");
    },
    editar: (req, res) => {
        res.render("admin/editProduct.ejs");
    },
    carrito: (req, res) => {
        res.render("products/productCart");
    }


};
module.exports = productosController;