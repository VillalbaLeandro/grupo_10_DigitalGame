const fs = require("fs");
const path = require("path");
const usersJsonPath = path.join(__dirname, '../data/users.json');

const User = {
    fileName: usersJsonPath,

    getData: function () {
        return JSON.parse(fs.readFileSync(this.fileName, "utf-8"));
    },//OBTIENE LA INFORMCION DEL USER

    generateId: function (){
        let allUsers = this.findAll();
        let lastUser = allUsers.pop();
        if (lastUser) {
            return lastUser.id + 1;
        }
        return 1;
    },//FUNCION QUE SE ENCARGA DE GENERAR EL ID DE USER

    findAll: function () {
        return this.getData();
    },//FUNCION PARA TRAER TODO LOS USUARIOS AL IGUAL QUE GETDATA

    findByPk: function (id) {
        let allUsers = this.findAll();
        let userFound = allUsers.find(oneUser => oneUser.id === id);
        return userFound;
    },

    findByField: function (field, text) {
        let allUsers = this.findAll();
        let userFound = allUsers.find(oneUser => oneUser[field]=== text);
        return userFound;
    },

    create: function (userData) {
        let allUsers = this.findAll();
        let newUser = {
            id: this.generateId(),
            ...userData
        }
        allUsers.push(userData),
        fs.writeFileSync(this.fileName, JSON.stringify(allUsers, null, " "));
        return true;
    }, 

    delete: function (id) {
        let allUsers = this.findAll();
        let finalUsers = allUsers.filter(oneUser => oneUser.id !== id);
        allUsers.push(userData),
        fs.writeFileSync(this.fileName, JSON.stringify(finalUsers, null, " "));
        return newUser;
    }
}

module.exports = User;