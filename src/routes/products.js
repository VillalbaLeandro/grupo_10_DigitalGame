const express = require ("express");
const productosController = require ("../controllers/productsControllers.js")
const router = express.Router()

router.get ("/productDetail", productosController.detalle);
router.get ("/createProduct", productosController.crear);
router.get ("/editProduct", productosController.editar);
router.get ("/productCart", productosController.carrito);

module.exports= router;