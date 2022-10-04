module.exports = (sequelize, dataTypes) => {
    const alias = 'Compatibility';

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
        tableName: 'compatibilities',
        timestamps: false
    };
    const Compatibility = sequelize.define(alias, cols, config);
    return Compatibility;
}