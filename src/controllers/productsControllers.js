const db = require("../database/models");
const path = require("path");
const fs = require('fs');

const productsFilePath = path.join(__dirname, '../data/products.json');
const products = JSON.parse(fs.readFileSync(productsFilePath, 'utf-8'));

const productosController = {
    list: (req, res) => {


    },
    detail: (req, res) => {
        db.Product.findByPk(req.params.id)
            .then(data => {
                res.render("products/productDetail", { product: data })
            })
            .catch(err => {
                res.send(err);
            });
    },
    crear: (req, res) => {
        res.render("admin/createProduct.ejs");
    },
    store: (req, res) => {


        //prueba con JSON.stringify(req.body)
        // const newProduct = {
        //     name: req.body.name,
        //     compatibilities: JSON.stringify(req.body.compatibilites, null, " I "),
        //     gender: JSON.stringify(req.body.gender),
        //     players: JSON.stringify(req.body.players),
        //     price: req.body.price,
        //     language: JSON.stringify(req.body.language),
        //     releaseData: req.body.releaseData,
        //     img: req.body.img,
        //     fullName: req.body.fullName,
        //     description: req.body.description,
        //     capture1: req.body.capture1,
        //     capture2: req.body.capture2,
        //     capture3: req.body.capture3,
        //     capture4: req.body.capture4,
        //     video: req.body.video,
        //     discount: req.body.discount,
        //     freeShipping: req.body.freeShipping,
        //     categori: "",
        // }
        // db.Product.create(newProduct)
        //     .then(prductCreated => {
        //         res.redirect("/");
        //     })
        //     .catch(error => {
        //         console.log(error)
        //     })

        // Prueba con String()

        const newProduct = {
            name: req.body.name,
            compatibilities: String(req.body.compatibilites),
            gender: String(req.body.gender),
            players: String(req.body.players),
            price: String(req.body.comppriceatibilites),
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
        db.Product.create(newProduct)
            .then(prductCreated => {
                res.redirect("/");
            })
            .catch(error => {
                console.log(error)
            })



        // productsClone.push(newProduct);
        // fs.writeFileSync(productsFilePath, JSON.stringify(productsClone, null, " "));
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

        // res.redirect("/");
    },
    editar: (req, res) => {
        const product = products.find((product) => { return product.id === +req.params.id })
        res.render("admin/editProduct.ejs", { product });
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
            compatibilites: req.body.compatibilites,
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
        let id = req.params.id;

        let finalProducts = products.filter(product => product.id != id);

        fs.writeFileSync(productsFilePath, JSON.stringify(finalProducts, null, '  '));

        res.redirect("/")
    }


};
module.exports = productosController;