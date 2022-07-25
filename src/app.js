const express = require("express");
const path =require("path");
const app = express();

app.use(express.static(path.resolve(__dirname, "../public")));
app.use(express.urlencoded());

/****************REQUIRE MODULES************************** */
const rutasProductos = require ("./routes/products.js")

/******************RUTAS********************/
app.get ("/productCart", (req, res) => {
    res.sendFile(path.join(__dirname, "/views/productCart.html"))
});

app.get ("/", (req, res) => {
    res.sendFile(path.join(__dirname, "/views/index.html"))
});

app.get ("/login", (req, res) => {
    res.sendFile(path.join(__dirname, "/views/login.html"))
});

app.get ("/productDetail", rutasProductos );

app.get ("/register", (req, res) => {
    res.sendFile(path.join(__dirname, "/views/register.html"))
});


/******************FIN RUTAS********************/

const port = process.env.PORT || 3000;

app.listen(port, () => {
    console.log( "Servidor inciado en: http://localhost:" + port)
});
