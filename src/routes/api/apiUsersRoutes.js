const express = require("express");
const router = express.Router();
const apiUsersController  = require("../../controllers/api/apiUsersController");

//MIDDLEWARES
const authMiddleware = require("../../middlewares/authMiddleware");

router.get("/all", apiUsersController.list); //listado de todos los productos
router.get("/:id", apiUsersController.detail); //detalle de producto


module.exports = router;