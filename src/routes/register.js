const express = require ("express");
const productosController = require ("../controllers/registerControllers")
const router = express.Router()

router.get ("/register", productosController.register);


module.exports= router;