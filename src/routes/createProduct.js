const express = require ("express");
const router = express.Router()
const createProductControllers = require("../controllers/createProductControllers")


router.get ("/createProduct", createProductControllers.create);

module.exports=router;