const db = require("../database/models");

const path = require("path");
const fs = require("fs");
//const user = require("../models/user");
const { validationResult } = require("express-validator");
const bcryptjs = require("bcrypt");

//json products
const productsFilePath = path.join(__dirname, "../data/products.json");
const products = JSON.parse(fs.readFileSync(productsFilePath, "utf-8"));
//json Users
const usersFilePath = path.join(__dirname, "../data/users.json");
const users = JSON.parse(fs.readFileSync(usersFilePath, "utf-8"));

const mainControllers = {
    loading: (req, res)=>{
        res.render('loading')
    },
    home: (req, res) => {

        // res.render("index", { products });

        db.Product.findAll(
            { include: [ "compatibilities", "genders"]})
            .then(products => {
                console.log(products)
                res.render("index", { products });

            })
            .catch(err => {
                res.send(err);
            });
    },

    list: (req, res) => {
        res.render("./users/usersList", { users })
    },

    login: (req, res) => {
        res.render(path.join(__dirname, "../views/users/login.ejs"));
    },

    loginProcess: (req, res) => {
        db.User.findOne(
            {
                where: {
                    email: req.body.email,
                }
            }
        )
        .then(user => {
           // let usuarioJson = JSON.parse(JSON.stringify(user))
        //res.send(user);

            userToLogin = user;
        
            if(userToLogin) {
                //return res.send(userToLogin.password);

                if(userToLogin.password.substr(0,7) == '$2b$10$'){

                    let isOkThePassword = bcryptjs.compareSync(req.body.password, userToLogin.password);
                    if(isOkThePassword) {
                        delete userToLogin.password;
                        req.session.userLogged = userToLogin;
                        if(req.body.recordarme) {
                            res.cookie('userEmail', req.body.email, { maxAge: (1000 * 60) * 60  })
                        }

                        return res.redirect("/home");
                    }
                    return res.render("../views/users/login.ejs", {
                        errors: {
                            email: {
                                msg: "Las credenciales son incorrectas"
                            }
                        }
                    });
                }

                if(userToLogin.password == req.body.password){
                    // Guarda todos los datos del usuario en una variable de session
                    // primero quitar el atributo password del objeto
                    delete userToLogin.password;
                    req.session.userLogged = userToLogin;

                    if(req.body.recordarme) {
                        res.cookie('userEmail', req.body.email, { maxAge: (1000 * 60) * 60 })
                    }

                    return res.redirect("/home");
                }
                return res.render("../views/users/login.ejs", {
                    errors: {
                        email: {
                            msg: "Las credenciales son incorrectas"
                        }
                    }
                });

            }

            return res.render("../views/users/login.ejs", {
                errors: {
                    email: {
                        msg: "No se encuentra este email en nuestra base de datos"
                    }
                }
            });

        })
    },

    register: (req, res) => {
        res.render(path.join(__dirname, "../views/users/register.ejs"));
    },

    store: (req, res) => {
        const resultValidation = validationResult(req);

        if (resultValidation.errors.length > 0) {
            return res.render("../views/users/register.ejs", {
                errors: resultValidation.mapped(),
                oldData: req.body
            });
        }

        db.User.findOne({where: {email: req.body.email}})
            .then(mail =>{
                let userInDB = JSON.parse(JSON.stringify(mail))
                if (userInDB) {
                    return res.render("../views/users/register.ejs", {
                        errors: {
                            email: {
                                msg: "Este email ya está registrado"
                            }
                        },
                        oldData: req.body
                    });
                }
        
            })
        
        let userToCreate = {
            email: req.body.email,
            full_name: req.body.fullName,
            password: bcryptjs.hashSync(req.body.password, 10),
            address: req.body.domicilio,
            img_profile: req.file.imgUser
        }

        db.User.create(userToCreate);
        

        res.redirect("/login");
    },


    ofertas: (req, res) => {
        const inSale = products.filter(product => product.discount > 0);
        res.render("oferts", { inSale });
    },

    profile: (req, res) => {
        return res.render("../views/users/profile", {
            user: req.session.userLogged
        });
    },

    logout: (req, res) => {
        res.clearCookie("userEmail");//DESTRUYE CUALQUIER TIPO DE COOKIE
        req.session.destroy();//DESTRUYE CUALQUIER TIPO DE SESSION
        res.redirect("/home");
    }
}

module.exports = mainControllers;
