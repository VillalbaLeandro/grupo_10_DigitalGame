module.exports = (sequelize, dataTypes) => {
    const alias = 'Gender';

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
        tableName: 'genders',
        timestamps: false
    };
    const Gender = sequelize.define(alias, cols, config);

    Gender.associate = (models) => {

        Gender.belongsToMany(models.Product, {// Relacion mucho a mucho || por mas que haya tabla intermedia se llama a la tabla final
            as: "products", //como voy a llamar a esta relacion de este modelo
            through: "products_has_genders",  //nombre de la tabla pivote
            foreignKey: "genders_id", //la id del modelo
            otherKey: "products_id"  //la otra id de la tabla pivote
        })
    }
    return Gender;
}