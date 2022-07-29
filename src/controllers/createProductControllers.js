const path = require("path")

const createProductControllers={
    create: (req, res) => {
        res.render(path.join(__dirname, "../views/admin/createProduct.ejs"))
    }, 
}
module.exports=createProductControllers;