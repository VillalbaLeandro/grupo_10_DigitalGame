const express = require("express");
const productosController = require("../controllers/productsControllers.js");
const router = express.Router();

//MIDDLEWARES
const authMiddleware = require("../middlewares/authMiddleware");

router.get("/all", productosController.list); //listado de todos los productos
router.get("/createProduct", authMiddleware, productosController.crear); //Formulario de creación de productos
router.put("/createProduct", authMiddleware, productosController.store); //accion creación de productos
router.get("/productCart", productosController.carrito);
router.get("/news", productosController.news);
router.get("/oferts", productosController.oferts);
router.get("/consolas/:filter", productosController.consolas);
router.get("/filter/:filter", productosController.filter);
router.get("/:id/editProduct", authMiddleware, productosController.editar); //Formulario de edición de productos
router.put("/:id/editProduct", authMiddleware, productosController.update); //Acción de edición (a donde se envía el formulario):
router.get("/:id/productDetail", productosController.detail); //Detalle de un producto particular
router.delete('/:id/delete', authMiddleware, productosController.delete);  //Acción de borrado
//Listado de productos

module.exports = router;