const path = require("path")

const indexControllers={
    home: (req, res) => {
        res.sendFile(path.join(__dirname, "../views/index.html"))
    }
    
}

module.exports=indexControllers;
