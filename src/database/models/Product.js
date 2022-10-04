const { DataTypes } = require("sequelize");

module.exports = (sequelize, dataTypes) => {
    const alias = 'Product';

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
        players: {
            type: dataTypes.STRING,
            allowNull: true
        },
        releaseData: {
            type: dataTypes.STRING,
            allowNull: true
        },
        img: {
            type: dataTypes.STRING,
            allowNull: true
        },
        fullName: {
            type: dataTypes.STRING,
            allowNull: true
        },
        description: {
            type: dataTypes.STRING,
            allowNull: true
        },
        discount: {
            type: dataTypes.INTEGER,
            allowNull: true
        },
        freeShipping: {
            type: dataTypes.BOOLEAN,
            allowNull: true
        },
        price: {
            type: dataTypes.INTEGER,
            allowNull: true
        },
        capture1: {
            type: dataTypes.STRING,
            allowNull: true
        },
        capture2: {
            type: dataTypes.STRING,
            allowNull: true
        },
        capture3: {
            type: dataTypes.STRING,
            allowNull: true
        },
        capture4: {
            type: dataTypes.STRING,
            allowNull: true
        },
        video: {
            type: dataTypes.STRING,
            allowNull: true
        },
        compatibilities: {
            type: dataTypes.STRING,
            allowNull: true
        },
        gender: {
            type: dataTypes.STRING,
            allowNull: true
        },
        language: {
            type: dataTypes.STRING,
            allowNull: true
        },
    };

    const config = {
        tableName: 'products',
        timestamps: false
    };
    const Product = sequelize.define(alias, cols, config);
    return Product;
}
