const path = require("path")

const registerControllers = {
    register: (req, res) => {
        res.sendFile(path.join(__dirname, "../views/users/register.html"))

    },
    
}

module.exports=registerControllers