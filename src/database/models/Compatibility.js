module.exports = (sequelize, dataTypes) => {
    const alias = 'Compatibility';

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
        tableName: 'compatibilities',
        timestamps: false
    };
    const Compatibility = sequelize.define(alias, cols, config);

    Compatibility.associate = (models) => {

        Compatibility.belongsToMany(models.Product, {  // Relacion mucho a mucho || por mas que haya tabla intermedia se llama a la tabla final
            as: "products",//como voy a llamar a esta relacion de este modelo
            through: "compatibilities_has_products", //nombre de la tabla pivote
            foreignKey: "compatibilities_id", //la id del modelo
            otherKey: "products_id" //la otra id de la tabla pivote
        })
    }
    return Compatibility;
}