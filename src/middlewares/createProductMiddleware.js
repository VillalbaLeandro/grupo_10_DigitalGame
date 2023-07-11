const path = require("path");
const { body } = require("express-validator");


const createProductMiddleware = [
    body("name")
        .notEmpty().withMessage("Tienes que escribir un nombre"),
    body("compatibilities")
        .notEmpty().withMessage("Tienes que tildar al menos una casilla"),
    body("gender")
        .notEmpty().withMessage("Tienes que tildar al menos una casilla"),
    body("players")
        .notEmpty().withMessage("Tienes que tildar al menos una casilla"),
    body("price")
        .notEmpty().withMessage("Tienes que ponerle precio al producto"),
    body("language")
        .notEmpty().withMessage("Tienes que tildar al menos una casilla"),
    body("releaseData")
        .notEmpty().withMessage("Tienes que poner la fecha de lanzamiento"),
    body("img")
        .notEmpty().withMessage("Tienes que poner el link de la imagen"),
    body("fullName")
        .notEmpty().withMessage("Tienes que poner el nombre completo del juego"),
    body("description")
        .notEmpty().withMessage("Tienes que poner la descripcion del juego"),
    body("capture1")
        .notEmpty().withMessage("Tienes que poner el link de la imagen"),
    body("capture2")
        .notEmpty().withMessage("Tienes que poner el link de la imagen"),
    body("capture3")
        .notEmpty().withMessage("Tienes que poner el link de la imagen"),
    body("capture4")
        .notEmpty().withMessage("Tienes que poner el link de la imageno"),
    body("video")
        .notEmpty().withMessage("Tienes que poner el link del video embebido"),
        
]

module.exports = createProductMiddleware;