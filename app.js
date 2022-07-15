const express = require("express");
const path =require("path");
const app = express();

app.use(express.static(path.resolve(__dirname, "./public")));
app.use(express.urlencoded());

app.get ("/", (req, res) => {
    res.sendFile(path.join(__dirname, "/views/home.html"))
});

app.get ("/register", (req, res) => {
    res.sendFile(path.join(__dirname, "/views/register.html"))
});

app.get ("/detalleProducto", (req, res) => {
    res.sendFile(path.join(__dirname, "/views/detalleProducto.html"))
});


app.get ("/carrito", (req, res) => {
    res.sendFile(path.join(__dirname, "/views/carrito.html"))
});

// app de prueba
app.get ("/home2", (req, res) => {
    res.sendFile(path.join(__dirname, "/views/home2.html"))
});



app.listen(3040, () => {
    console.log( "Levantando un servidor con Express en: http://localhost:3040")
});

app.get ("/login", (req, res) => {
    res.sendFile(path.join(__dirname, "/views/login.html"))
});