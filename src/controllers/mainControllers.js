const path = require("path");
const fs = require('fs');
//json products
const productsFilePath = path.join(__dirname, '../data/products.json');
const products = JSON.parse(fs.readFileSync(productsFilePath, 'utf-8'));
//json Users
const usersFilePath = path.join(__dirname, '../data/users.json');
const users = JSON.parse(fs.readFileSync(usersFilePath, 'utf-8'));

const mainControllers = {
    home: (req, res) => {
        res.render("index", { products });
    },
    list: (req, res)=>{
        res.render("./users/usersList", {users})
    },
    login: (req, res) => {
        res.render(path.join(__dirname, "../views/users/login.ejs"));
    },
    register: (req, res) => {
        res.render(path.join(__dirname, "../views/users/register.ejs"));
    },
    store: (req, res) => {
        

        if(req.file){   //ac se puede realizar cualquer tipo de validacion como por ejemplo el zise
            const userClone= users;
            const newUser = {
                id: users[users.length - 1].id + 1,
                email: req.body.email,
                fullName: req.body.fullName,
                password: req.body.password,
                confirmPass: req.body.confirmPass,
                imgUser: req.file.filename  //filename es el nombre definido para guardar las imagenes
            };
            
            userClone.push(newUser);
            
            fs.writeFileSync(usersFilePath, JSON.stringify(userClone, null, " "));
            
            res.redirect("/usersList");
        } else{
            res.redirect("/register");
        }
       
    },
    ofertas: (req, res) => {
        const inSale = products.filter(product => product.discount > 0);
        res.render("oferts", { inSale });
    },
}

module.exports = mainControllers;
