const express = require("express");
const router = express.Router();
const apiProductosController  = require("../../controllers/api/apiProductsControllers");

//MIDDLEWARES
const authMiddleware = require("../../middlewares/authMiddleware");

router.get("/all", apiProductosController.list); //listado de todos los productos
router.get("/:id", apiProductosController.detail); //detalle de producto


module.exports = router;