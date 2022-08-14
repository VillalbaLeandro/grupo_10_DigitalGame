const path = require("path")

const mainControllers={
    home: (req, res) => {
        res.render(path.join(__dirname, "../views/index.ejs"))
    },
    login: (req, res) => {
        res.render(path.join(__dirname, "../views/users/login.ejs"))
    },
    register: (req, res) => {
        res.render(path.join(__dirname, "../views/users/register.ejs"))

    }
}

module.exports= mainControllers;
