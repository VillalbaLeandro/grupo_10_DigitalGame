const { sequelize } = require("../../database/models");
const db = require("../../database/models");


const apiUsersController = {
    list: async (req, res) => {
        try {
            const users = await db.User.findAll()
           
            return res.status(200).json({
                meta: {
                    status: 200,
                    total: users.length,
                    url: 'api/user'
                },
                count: users.length,
                users
            });
        }
        catch (err) {
            res.send(err);
        };
    },
    detail: (req, res) => {
        db.User.findByPk(req.params.id)
            .then(user => {
                return res.status(200).json({
                    data: user,
                    status: 200
                });

            })
            .catch(err => {
                res.send(err);
            });
    }
}
module.exports = apiUsersController;