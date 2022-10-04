module.exports = (sequelize, dataTypes) => {
    const alias = 'Compatibility';

    const cols = {
        id: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        name: dataTypes.STRING,
        
    };

    const config = {
        tableName: 'compatibilities',
        timestamps: false
    };
    const Compatibility = sequelize.define(alias, cols, config);
    return Compatibility;
}