module.exports = (sequelize, dataTypes) => {
    const alias = 'ShoppingCart';

    const cols = {
        id: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            allowNull: true
        },
        amount: {
            type: dataTypes.INTEGER,
            allowNull: true
        },
        total: {
            type: dataTypes.INTEGER,
            allowNull: true
        },
        
    };

    const config = {
        tableName: 'shoppingCart',
        timestamps: false
    };
    const ShoppingCart = sequelize.define(alias, cols, config);
    return ShoppingCart;
}