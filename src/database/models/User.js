module.exports = (sequelize, dataTypes) => {
    const alias = 'User';

    const cols = {
        id: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            allowNull: true
        },
        full_name: {
            type: dataTypes.STRING,
            allowNull: true
        },
        email: {
            type: dataTypes.STRING,
            allowNull: true
        },
        password: {
            type: dataTypes.STRING,
            allowNull: true
        },
        address: {
            type: dataTypes.STRING,
            allowNull: true
        },
        img_profile: {
            type: dataTypes.STRING,
            allowNull: true
        },
        
        
    };

    const config = {
        tableName: 'users',
        timestamps: false
    };
    const User = sequelize.define(alias, cols, config);

    User.associate = (models) => { //indicamos que este modelo va a tener una "asociacion" y recibe los "modelos"
        // un usuario tiene un permiso(admin o vendedor o usuario) 
        User.belongsTo(models.Roll, {
            as: "roles", //como llamo a la relacion
            foreignKey: "roles_id" //la columna en la base de datos que relaciona estas dos tablas
        })

    }
    return User;
}