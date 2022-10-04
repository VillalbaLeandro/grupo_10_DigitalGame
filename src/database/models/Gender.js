module.exports = (sequelize, dataTypes) => {
    const alias = 'Gender';

    const cols = {
        id: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        name: dataTypes.STRING,
        
    };

    const config = {
        tableName: 'genders',
        timestamps: false
    };
    const Gender = sequelize.define(alias, cols, config);
    return Gender;
}