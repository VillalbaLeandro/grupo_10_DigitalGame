module.exports = (sequelize, dataTypes) => {
    const alias = 'Lenguage';

    const cols = {
        id: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        name: dataTypes.STRING,
        
    };

    const config = {
        tableName: 'lenguages',
        timestamps: false
    };
    const Lenguage = sequelize.define(alias, cols, config);
    return Lenguage;
}