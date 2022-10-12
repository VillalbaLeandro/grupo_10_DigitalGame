const db = require("../database/models");
const path = require("path");
const fs = require('fs');
const { where } = require("sequelize");

const productsFilePath = path.join(__dirname, '../data/products.json');
const products = JSON.parse(fs.readFileSync(productsFilePath, 'utf-8'));

const productosController = {
    list: (req, res) => {

    },
    detail: (req, res) => {
        db.Product.findByPk(req.params.id, {
            include: ["genders", "compatibilities", "lenguages", "players"],

        })
            .then(product => {
                res.render("products/productDetail", { product })
            })
            .catch(err => {
                res.send(err);
            });
    },
    crear: (req, res) => {
        res.render("admin/createProduct");
    },
    store: (req, res) => {

        const newProduct = {
            name: req.body.name,
            compatibilities: req.body.compatibilities,
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


        db.Product.create(newProduct)
            .then(prductCreated => {
                console.log("creado" + newProduct)
            })
            .catch(error => {
                console.log(error)
            })

     
        const tablaPivot = req.body.gender.map(genre => {
            return  {
                products_id: 1,
                genders_id: req.body.gender
            }
        });

        db.ProductGender.bulkCreate(tablaPivot)
            .then(product =>{
                res.redirect("/")
            })




    },
    editar: (req, res) => {
        db.Product.findByPk(req.params.id)
            .then((product) => {
                res.render("admin/editProduct", { product })
            })
            .catch(error => {
                console.log(error)
            })

    },
    update: (req, res) => {

        db.Product.update({
            name: req.body.name,
            compatibilities: JSON.stringify(req.body.compatibilities),
            gender: JSON.stringify(req.body.gender),
            players: JSON.stringify(req.body.players),
            price: req.body.price,
            language: JSON.stringify(req.body.language),
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
        },
            {
                where: {
                    id: req.params.id
                }
            })

        res.redirect("/");

    },
    carrito: (req, res) => {
        res.render("products/productCart");
    },
    delete: (req, res) => {
        let id = req.params.id;

        db.Product.destroy({ where: { id: id } })
            .then(() => {
                res.redirect("/")
            })


    }


};
module.exports = productosController;