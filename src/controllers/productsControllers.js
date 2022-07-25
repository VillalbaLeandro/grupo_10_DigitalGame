const path = require("path")
const productosController = {
    listado:()=>{},
    detalle: (req, res) => {
        res.sendFile(path.join(__dirname, "../views/productDetail.html"))
    },
    crear: ()=>{},
    editar: ()=>{}


};
module.exports=productosController;