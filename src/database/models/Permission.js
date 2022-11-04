module.exports = (sequelize, dataTypes) => {
    const alias = 'Permission';

    const cols = {
        id: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            allowNull: true
        },
        name: {
            type: dataTypes.STRING,
            allowNull: true
        },
                
    };

    const config = {
        tableName: 'permissions',
        timestamps: false
    };
    const Permission = sequelize.define(alias, cols, config);

    Permission.associate = (models) => {  //indicamos que este modelo va a tener una "asociacion" y recibe los "modelos"
        // un permiso(admin, vendedor o comprador) tiene muchos usuarios 
        Permission.hasMany(models.User, {
            as: "permissions", //como llamo a la relacion
            foreignKey: "permissions_id" //la columna en la base de datos que relaciona estas dos tablas
        })

    }
    return Permission;
}