const express = require ("express");
const multer = require("multer");
const path = require("path");
const mainControllers = require("../controllers/mainControllers");

const router = express.Router();

router.get ("/", mainControllers.home);
router.get ("/login", mainControllers.login);
router.get ("/register", uploadFile.single("avatar"), mainControllers.register);
router.get ("/ofertas", mainControllers.ofertas);

const storage = multer.diskStorage({
    destination: (req, file, cb)=>{
        cb(null, "../public/image/usersAvatar");
    },
    filename: (req, file, cb)=>{
        cb(null,`${Date.now()}_img_${path.extname(file.originalname)}`)}
});
const uploadFile= multer({ storage });

module.exports=router;