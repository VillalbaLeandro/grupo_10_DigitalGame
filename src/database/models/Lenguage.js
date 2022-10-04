module.exports = (sequelize, dataTypes) => {
    const alias = 'Lenguage';

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
    };

    const config = {
        tableName: 'lenguages',
        timestamps: false
    };
    const Lenguage = sequelize.define(alias, cols, config);
    return Lenguage;
}