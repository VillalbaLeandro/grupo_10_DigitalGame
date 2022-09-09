const express = require("express");
const app = express();
const path = require("path");
const methodOverride = require("method-override");
const session = require("express-session");
const cookies = require("cookie-parser");



app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "views"));

app.use(express.static(path.resolve(__dirname, "../public")));
app.use(express.urlencoded({ extended: false }));
app.use(methodOverride("_method"));
app.use(session({
	secret: "Shhh, It's a secret",
	resave: false,
	saveUninitialized: false,
}));
app.use(cookies());


/****************REQUIRE MODULES************************** */
const rutasProductos = require("./routes/products.js");
const mainRoutes = require("./routes/main.js");

/* MIDDLEWARE */
const logMiddleware = require("./middleWares/logMiddleWare")

/******************RUTAS********************/
app.use("/", mainRoutes);
app.use(logMiddleware)
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
console.log(`Servidor inciado en: http://localhost:${port}`)
});
