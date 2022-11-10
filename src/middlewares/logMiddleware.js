const fs = require("fs");
function logMiddleWare(req, res, next) {

    

    next();
}

module.exports = logMiddleWare;