const db = require("../database/models");
const { Op } = require("sequelize");
const { where } = require("sequelize");
// const encontrar = require("../views/filters/")
// const encontrar = require("../views/pa")

const filterControllers = {
    accion: (req, res) => {
        da.Product.findAll({
            where: {
                gendres: 1
            }
        })
            .then((products) => {
                res.render("filters/accionFilter", { products })
            })
            .catch(error => {
                console.log(error)
            })
    }

}





module.exports = filterControllers;