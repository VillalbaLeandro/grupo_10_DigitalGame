const express = require("express");
const path =require("path");
const app = express();

app.use(express.static(path.resolve(__dirname, "../public")));
app.use(express.urlencoded());

/****************REQUIRE MODULES************************** */
const rutasProductos = require ("./routes/products.js")
const rutasIndex = require("./routes/index.js")
const rutasLogin = require("./routes/login.js")
const rutasRegister = require("./routes/register.js")
const rutasProductsCar= require("./routes/productsCart.js")
/******************RUTAS********************/

app.get ("/", rutasIndex );

app.get ("/login", rutasLogin );

app.get ("/productDetail", rutasProductos );

app.get ("/register", rutasRegister);

app.get ("/productCart", rutasProductsCar);



/******************FIN RUTAS********************/

const port = process.env.PORT || 3000;

app.listen(port, () => {
    console.log( "Servidor inciado en: http://localhost:" + port)
});
