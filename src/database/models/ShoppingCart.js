module.exports = (sequelize, dataTypes) => {
    const alias = 'ShoppingCart';

    const cols = {
        id: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        amount: dataTypes.INTEGER,
        total: dataTypes.INTEGER
        
    };

    const config = {
        tableName: 'shoppingCart',
        timestamps: false
    };
    const ShoppingCart = sequelize.define(alias, cols, config);
    return ShoppingCart;
}