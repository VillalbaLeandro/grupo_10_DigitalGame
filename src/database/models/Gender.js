module.exports = (sequelize, dataTypes) => {
    const alias = 'Gender';

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
        tableName: 'genders',
        timestamps: false
    };
    const Gender = sequelize.define(alias, cols, config);
    return Gender;
}