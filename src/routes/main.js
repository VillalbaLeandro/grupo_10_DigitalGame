const express = require ("express");
const router = express.Router();
const mainControllers = require("../controllers/mainControllers");


router.get ("/", mainControllers.home);
router.get ("/login", mainControllers.login);
router.get ("/register", mainControllers.register);

module.exports=router;