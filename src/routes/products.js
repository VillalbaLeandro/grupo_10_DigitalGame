const express = require("express");
const productosController = require("../controllers/productsControllers.js");
const router = express.Router();

router.get("/:id/productDetail", productosController.detalle); //Detalle de un producto particular
router.get("/createProduct", productosController.crear); //Formulario de creación de productos
router.put("/createProduct", productosController.store); //accion creación de productos
router.get("/:id/editProduct", productosController.editar); //Formulario de edición de productos
router.put("/:id/editProduct", productosController.update); //Acción de edición (a donde se envía el formulario):
router.get("/productCart", productosController.carrito);
router.delete('/:id/delete', productosController.destroy);  //Acción de borrado
                                                        //Listado de productos

module.exports= router;