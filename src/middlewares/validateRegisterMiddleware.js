const path = require("path");
const { body } = require("express-validator");

const validateRegister = [
	body("email")
		.notEmpty().withMessage("Tienes que escribir un correo electrónico").bail()
		.isEmail().withMessage("Debes escribir un formato de correo válido"),
	body("fullName")
		.notEmpty().withMessage("Tienes que escribir un nombre"),
	body("password").notEmpty().withMessage("Tienes que escribir una contraseña"),
	body("confirmPass").notEmpty().withMessage("Tienes que confirmar tu contraseña"),
	body("domicilio").notEmpty().withMessage("Tienes que escribir tu domicilio"),
	body("imgUser").custom((value, { req }) => {
		let file = req.file;
		let acceptedExtensions = [".jpg", ".png", ".jpeg", "gif"];

		if (!file) {
			throw new Error("Tienes que subir una imagen");
		} else {
			let fileExtension = path.extname(file.originalname);
			if (!acceptedExtensions.includes(fileExtension)) {
				throw new Error(`Las extensiones de archivo permitidas son ${acceptedExtensions.join(', ')}`);
			}
		}
		return true;
	})
]

module.exports = validateRegister;