const fs = require("fs");

function logMiddleWare(req, res, next) {

    fs.appendFileSync ("log.txt", "se ingreso en la pagina " + req.url);

    next();
}

module.exports = logMiddleWare;