const { DataTypes } = require("sequelize");

module.exports = (sequelize, dataTypes) => {
    const alias = 'Product';

    const cols = {
        id: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        name: dataTypes.STRING,
        players: dataTypes.STRING,
        releaseData: dataTypes.STRING,
        img: dataTypes.STRING,
        fullName: dataTypes.STRING,
        description: dataTypes.STRING,
        discount: dataTypes.INTEGER,
        freeShipping: dataTypes.BOOLEAN,
        price: dataTypes.INTEGER,
        capture1: DataTypes.STRING,
        capture2: dataTypes.STRING,
        capture3: DataTypes.STRING,
        capture4: dataTypes.STRING,
        video: dataTypes.STRING
          
    };

    const config = {
        tableName: 'products',
        timestamps: false
    };
    const Product = sequelize.define(alias, cols, config);
    return Product;
}
