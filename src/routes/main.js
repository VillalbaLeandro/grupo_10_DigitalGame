const express = require("express");
const multer = require("multer");
const path = require("path");
const mainControllers = require("../controllers/mainControllers");

const router = express.Router();

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


router.get("/", mainControllers.home);
router.get("/login", mainControllers.login);
router.get("/register", mainControllers.register);
router.post("/register", uploadFile.single("imgUser"), mainControllers.store);

router.get("/ofertas", mainControllers.ofertas);


module.exports = router;