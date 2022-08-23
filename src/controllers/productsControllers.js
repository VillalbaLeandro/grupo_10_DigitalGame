const path = require("path");
const fs = require('fs');
const { request } = require("express");

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
        const product = products.find((product) => {return product.id === +req.params.id})
        res.render("admin/editProduct.ejs" , {product});
    },
    update: (req, res) => {

        let id = req.params.id;
        let productToEdit = products.find(product => {
            return product.id === id;
        });
        let editProduct = {
            // id: products[products.length - 1].id + 1,
            // no se entiende la logica del id, el id deberia ser el mismo que recibimos como parametro
            id: +req.params.id,
            name: req.body.name,
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

        products.forEach((product, index) => {
            if (product.id == id) {
                products[index] = editProduct;
            }
        });

        fs.writeFileSync(productsFilePath, JSON.stringify(products, null, " "));

        res.redirect("/")
    },
    carrito: (req, res) => {
        res.render("products/productCart");
    },
    destroy: (req, res) => {
        console.log ('entra al distroy')
        let id = req.params.id;
		
		let finalProducts = products.filter(product => product.id != id);
		
		fs.writeFileSync(productsFilePath, JSON.stringify(finalProducts, null, '  '));

		res.redirect("/")	
	}


};
module.exports = productosController;