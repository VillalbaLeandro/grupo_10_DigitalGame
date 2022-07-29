const express = require ("express");
const router = express.Router()
const editProductControllers = require("../controllers/editProductControllers")


router.get ("/editProduct", editProductControllers.edit);

module.exports=router;