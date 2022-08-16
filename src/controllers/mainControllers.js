const path = require("path");
const fs = require('fs');

const productsFilePath = path.join(__dirname, '../data/products.json');
const products = JSON.parse(fs.readFileSync(productsFilePath, 'utf-8'));


const mainControllers={
    home: (req, res) => {
        res.render("index", { products })
    },
    login: (req, res) => {
        res.render(path.join(__dirname, "../views/users/login.ejs"))
    },
    register: (req, res) => {
        res.render(path.join(__dirname, "../views/users/register.ejs"))

    }
}

module.exports= mainControllers;
