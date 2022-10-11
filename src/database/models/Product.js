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
        }
    };

    const config = {
        tableName: 'products',
        timestamps: false
    };
    const Product = sequelize.define(alias, cols, config);
    Product.associate = (models)=>{
        
        Product.belongsToMany(models.Gender, { // Relacion mucho a mucho || por mas que haya tabla intermedia se llama a la tabla final
            as: "genders",  //como voy a llamar a esta relacion de este modelo
            through: "products_has_genders",  //nombre de la tabla pivote
            foreignKey: "products_id", //la id del modelo
            otherKey: "genders_id" //la otra id de la tabla pivote
        })

        Product.belongsToMany(models.Compatibility, { // Relacion mucho a mucho || por mas que haya tabla intermedia se llama a la tabla final
            as: "compatibilities", //como voy a llamar a esta relacion de este modelo
            through: "compatibilities_has_products", //nombre de la tabla pivote
            foreignKey: "products_id", //la id del modelo
            otherKey: "compatibilities_id" //la otra id de la tabla pivote
        })

        Product.belongsToMany(models.Lenguage, { // Relacion mucho a mucho || por mas que haya tabla intermedia se llama a la tabla final
            as: "lenguages", //como voy a llamar a esta relacion de este modelo
            through: "products_has_lenguages", //nombre de la tabla pivote 
            foreignKey: "products_id", 
            otherKey: "lenguages_id" //la otra id de la tabla pivote
        })


        Product.belongsToMany(models.Player, { // Relacion mucho a mucho || por mas que haya tabla intermedia se llama a la tabla final
            as: "players", //como voy a llamar a esta relacion de este modelo
            through: "products_has_players", //nombre de la tabla pivote 
            foreignKey: "products_id", //la id del modelo
            otherKey: "players_id" //la otra id de la tabla pivote
        })


       
    }

    return Product;
}
