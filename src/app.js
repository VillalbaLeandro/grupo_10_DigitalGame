const express = require("express");
const path = require("path");
const app = express();
const methodOverride = require("method-override");


app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "src/views"));

app.use(express.static(path.resolve(__dirname, "../public")));
app.use(express.urlencoded({ extended: false }));
app.use(methodOverride("_method"));

/****************REQUIRE MODULES************************** */
const rutasProductos = require("./routes/products.js");
const mainRoutes = require("./routes/main.js");


/******************RUTAS********************/
app.use("/", mainRoutes);

app.use("/products", rutasProductos);

/******************FIN RUTAS********************/

// ************ERROR 404 NOTFOUND ******************* //
app.use((req, res, next) => {
    res.status(404).render("not-found");
    next()
});
// ************************************************** //
const port = process.env.PORT || 4040;
app.listen(port, () => {
    console.log("Servidor inciado en: http://localhost:" + port)
});
