const express = require("express");
const path =require("path");
const app = express();

app.use(express.static(path.resolve(__dirname, "./public")));
app.use(express.urlencoded());

/******************RUTAS********************/
app.get ("/carrito", (req, res) => {
    res.sendFile(path.join(__dirname, "/views/carrito.html"))
});

app.get ("/", (req, res) => {
    res.sendFile(path.join(__dirname, "/views/home.html"))
});

app.get ("/login", (req, res) => {
    res.sendFile(path.join(__dirname, "/views/login.html"))
});

app.get ("/productDetail", (req, res) => {
    res.sendFile(path.join(__dirname, "/views/productDetail.html"))
});

app.get ("/register", (req, res) => {
    res.sendFile(path.join(__dirname, "/views/register.html"))
});

app.get ("/footer", (req, res) => {
    res.sendFile(path.join(__dirname, "/views/footer.html"))
});
/******************FIN RUTAS********************/

const port = process.env.PORT || 3000;

app.listen(port, () => {
    console.log( "Servidor inciado en: http://localhost:" + port)
});
