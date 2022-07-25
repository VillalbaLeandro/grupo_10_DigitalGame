const express = require ("express");
const productosController = require ("../controllers/productsControllers.js")
const router = express.Router()

router.get ("/productDetail", productosController.detalle);


module.exports= router;