const path = require("path")

const editProductControllers={
    edit: (req, res) => {
        res.render(path.join(__dirname, "../views/admin/editProduct.ejs"))
    },   
}

module.exports=editProductControllers;