const express = require("express");
const path =require("path");
const app = express();

app.set("view engine" , "ejs");
    app.set("views", path.join(__dirname, "/views"))

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

app.get ("/createProduct", (req, res) => {
    res.render(path.join(__dirname, "./views/admin/createProduct"))
})

app.get ("/editProduct", (req, res) => {
    res.render(path.join(__dirname, "./views/admin/editProduct"))
})
/******************FIN RUTAS********************/

const port = process.env.PORT || 3000;
app.listen(port, () => {
    console.log( "Servidor inciado en: http://localhost:" + port)
});
