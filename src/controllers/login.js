const path = require("path")
const loginControllers = {
    login: (req, res) => {
        res.sendFile(path.join(__dirname, "../views/users/login.html"))
    }
}

module.exports=loginControllers;