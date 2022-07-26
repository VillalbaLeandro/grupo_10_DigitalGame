const express = require("express");
const router = express.Router();
const productsCartControllers = require("../controllers/productCartControllers")
router.get ("/productCart", productsCartControllers.detalles);

module.exports=router