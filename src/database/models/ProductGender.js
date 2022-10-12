module.exports = (sequelize, dataTypes) => {
    const alias = 'ProductGender';

    const cols = {
        products_id: {
            type: dataTypes.INTEGER,
        },

        genders_id: {
            type: dataTypes.INTEGER,
        }


    };

    const config = {
        tableName: 'products_has_genders',
        timestamps: false
    };
    const ProductGender = sequelize.define(alias, cols, config);


    return ProductGender;
}