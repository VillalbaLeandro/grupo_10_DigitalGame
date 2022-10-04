module.exports = (sequelize, dataTypes) => {
    const alias = 'User';

    const cols = {
        id: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        name: dataTypes.STRING,
        email: dataTypes.STRING,
        fullName: dataTypes.STRING,
        password: dataTypes.STRING,
        confirmPass: dataTypes.STRING,
        
    };

    const config = {
        tableName: 'users',
        timestamps: false
    };
    const User = sequelize.define(alias, cols, config);
    return User;
}