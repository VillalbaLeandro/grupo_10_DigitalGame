module.exports = (sequelize, dataTypes) => {
    const alias = 'ProductLenguages';

    const cols = {
        id: {
            type: dataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true
        },
        products_id: {
            type: dataTypes.INTEGER,
        },

        lenguages_id: {
            type: dataTypes.INTEGER,
        }


    };

    const config = {
        tableName: 'products_has_lenguages',
        timestamps: false
    };
    const ProductLenguages = sequelize.define(alias, cols, config);


    return ProductLenguages;
}