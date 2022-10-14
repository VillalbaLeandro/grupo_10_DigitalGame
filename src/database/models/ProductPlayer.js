module.exports = (sequelize, dataTypes) => {
    const alias = 'ProductPlayer';

    const cols = {
        id: {
            type: dataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true
        },
        products_id: {
            type: dataTypes.INTEGER,
        },

        players_id: {
            type: dataTypes.INTEGER,
        }


    };

    const config = {
        tableName: 'products_has_players',
        timestamps: false
    };
    const ProductPlayer = sequelize.define(alias, cols, config);


    return ProductPlayer;
}