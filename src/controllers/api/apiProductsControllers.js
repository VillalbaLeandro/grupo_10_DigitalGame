const { sequelize } = require("../../database/models");
const db = require("../../database/models");


const apiProductosController = {
    list: async (req, res) => {
        try {
            const products = await db.Product.findAll({ include: ["genders"] })
            const genre = await db.Gender.findAll({
                attributes: {
                    include: [[sequelize.fn("COUNT", sequelize.col("products.id")), "productCount"]]
                }, include: ["products"],
                group: ["id"]
            })

            return res.json({
                coutn: products.length,
                countByCategory: genre,
                product: products,

            })
        }
        catch (err) {
            res.send(err);
        };
    },
    detail: (req, res) => {
        db.Product.findByPk(req.params.id, {
            include: ["genders", "compatibilities", "lenguages", "players"],

        })
            .then(product => {
                return res.status(200).json({
                    data: product,
                    status: 200
                });

            })
            .catch(err => {
                res.send(err);
            });
    }
}
module.exports = apiProductosController;