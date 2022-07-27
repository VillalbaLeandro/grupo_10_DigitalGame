const path = require("path")
const productosController = {
    listado:()=>{},
    detalle: (req, res) => {
        res.render(path.join(__dirname, "../views/products/productDetail.ejs"))
    },
    crear: ()=>{},
    editar: ()=>{}


};
module.exports=productosController;