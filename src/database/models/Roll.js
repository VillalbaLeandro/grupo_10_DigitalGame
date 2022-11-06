module.exports = (sequelize, dataTypes) => {
    const alias = 'Roll';

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
        tableName: 'roles',
        timestamps: false
    };
    const Roll = sequelize.define(alias, cols, config);

    Roll.associate = (models) => {  //indicamos que este modelo va a tener una "asociacion" y recibe los "modelos"
        // un permiso(admin, vendedor o comprador) tiene muchos usuarios 
        Roll.hasMany(models.User, {
            as: "users", //como llamo a la relacion
            foreignKey: "roles_id" //la columna en la base de datos que relaciona estas dos tablas
        })

    }
    return Roll;
}