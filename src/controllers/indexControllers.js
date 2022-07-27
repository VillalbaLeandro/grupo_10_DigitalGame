const path = require("path")

const indexControllers={
    home: (req, res) => {
        res.render(path.join(__dirname, "../views/index.ejs"))
    }
    
}

module.exports=indexControllers;
