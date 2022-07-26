const path = require("path")
const productosController = {
    listado:()=>{},
    detalle: (req, res) => {
        res.sendFile(path.join(__dirname, "../views/products/productDetail.html"))
    },
    crear: ()=>{},
    editar: ()=>{}


};
module.exports=productosController;