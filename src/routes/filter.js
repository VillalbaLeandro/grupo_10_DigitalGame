//VARIABLES
const express = require("express");
const filterControllers = require("../controllers/filterCotrollers")
const router = express.Router();


router.get("/accion", filterControllers.accion); 




module.exports = router