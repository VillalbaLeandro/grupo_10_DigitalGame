const express = require("express");
const path =require("path");
const app = express();
const methodOverride = require("method-override");


app.set("view engine" , "ejs");
    app.set("views", path.join(__dirname, "/views"))

app.use(express.static(path.resolve(__dirname, "../public")));
app.use(express.urlencoded());
app.use(methodOverride("_method"));

/****************REQUIRE MODULES************************** */
const rutasProductos = require ("./routes/products.js");
const rutasIndex = require("./routes/index.js");
const rutasLogin = require("./routes/login.js");
const rutasRegister = require("./routes/register.js");
const rutasProductsCar= require("./routes/productsCart.js");
const rutasCreateProduct= require("./routes/createProduct.js");
const rutasEditProduct= require("./routes/editProduct.js");
const { NOTFOUND } = require("dns");

/******************RUTAS********************/
app.use ("/", rutasIndex );

// app.get ("/products/productDetail", rutasProductos )

app.use ("/products", rutasProductos )

app.get ("/login", rutasLogin );

app.get ("/register", rutasRegister);

// app.get ("/productDetail", rutasProductos );

app.get ("/productCart", rutasProductsCar);

// app.get ("/createProduct", rutasCreateProduct);

// app.get ("/editProduct", rutasEditProduct);
/******************FIN RUTAS********************/

// ************ERROR 404 NOTFOUND *******************
app.use((req,res,next)=>{
    res.status(404).render("not-found");
    next()
})
// **************************************************
const port = process.env.PORT || 4040;
app.listen(port, () => {
    console.log( "Servidor inciado en: http://localhost:" + port)
});
