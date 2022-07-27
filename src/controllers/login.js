const path = require("path")
const loginControllers = {
    login: (req, res) => {
        res.render(path.join(__dirname, "../views/users/login.ejs"))
    }
}

module.exports=loginControllers;