module.exports = (sequelize, dataTypes) => {
    const alias = 'ProductCompatibility';

    const cols = {
        id: {
            type: dataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true
        },
        products_id: {
            type: dataTypes.INTEGER,
        },

        compatibilities_id: {
            type: dataTypes.INTEGER,
        }


    };

    const config = {
        tableName: 'compatibilities_has_products',
        timestamps: false
    };
    const ProductCompatibility = sequelize.define(alias, cols, config);


    return ProductCompatibility;
}