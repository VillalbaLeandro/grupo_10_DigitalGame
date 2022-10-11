module.exports = (sequelize, dataTypes) => {
    const alias = 'Lenguage';

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
        tableName: 'lenguages',
        timestamps: false
    };
    const Lenguage = sequelize.define(alias, cols, config);

    Lenguage.associate = (models) => {

        Lenguage.belongsToMany(models.Product, {// Relacion mucho a mucho || por mas que haya tabla intermedia se llama a la tabla final
            as: "products", //como voy a llamar a esta relacion de este modelo
            through: "products_has_lenguages",  //nombre de la tabla pivote
            foreignKey: "lenguages_id", //la id del modelo
            otherKey: "products_id"  //la otra id de la tabla pivote
        })

    }
    return Lenguage;
}