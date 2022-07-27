const path = require("path")

const registerControllers = {
    register: (req, res) => {
        res.render(path.join(__dirname, "../views/users/register.ejs"))

    },
    
}

module.exports=registerControllers