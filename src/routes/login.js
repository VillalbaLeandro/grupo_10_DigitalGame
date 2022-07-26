const express = require("express");
const router = express.Router();
const loginControllers = require("../controllers/login.js")
router.get ("/login", loginControllers.login);

module.exports=router;
