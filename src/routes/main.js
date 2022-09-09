//VARIABLES
const express = require("express");
const multer = require("multer");
const path = require("path");
const expressValidator = require("express-validator");

const router = express.Router();

//CONTROLLERS
const mainControllers = require("../controllers/mainControllers");
const userControllers = require("../models/user");

//MIDDLEWARES
const validations = require('../middlewares/validateRegisterMiddleware');
const guestMiddleware = require('../middlewares/guestMiddleware');
const authMiddleware = require('../middlewares/authMiddleware');

//configuraciones para carga de archivos con multer
const storage = multer.diskStorage({
    //el destino, es decir, donde se va a guardar el archivo.
    destination: (req, file, cb) => {
        cb(null, path.join(__dirname, "../../public/image/usersAvatar"));
    },
    //configurar el nombre del archivo 
    filename: (req, file, cb) => {
            //con dateNow (Devuelve el número de milisegundos transcurridos 
    //desde las 00:00:00 UTC del 1 de enero de 1970.) +  _img_ + 
        cb(null, `${Date.now()}_img_${path.extname(file.originalname)}`)
    }

});
const uploadFile = multer({ storage });

//RUTAS POR GET
router.get("/", mainControllers.home);
router.get("/usersList", mainControllers.list);//LISTA DE USUARIOS
router.get("/login", guestMiddleware, mainControllers.login);//FORMULARIO DE LOGIN
router.get("/register", guestMiddleware, mainControllers.register);//FORMULARIO DE REGISTRO
router.get("/ofertas", mainControllers.ofertas);
router.get("/profile", authMiddleware, mainControllers.profile);
router.get("/logout", mainControllers.logout);

//RUTAS POR POST
router.post("/register", uploadFile.single("imgUser"), validations, mainControllers.store);//PROCESO DE REGISTRO
router.post('/login', mainControllers.loginProcess);//PROCESO DE LOGIN
 
module.exports = router;