module.exports = (sequelize, dataTypes) => {
    const alias = 'User';

    const cols = {
        id: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            allowNull:true
        },
        name: {
            type: dataTypes.STRING,
            allowNull: true
        },
        email: {
            type: dataTypes.STRING,
            allowNull: true
        },
        fullName: {
            type: dataTypes.STRING,
            allowNull: true
        },
        password: {
            type: dataTypes.STRING,
            allowNull: true
        },
        confirmPass: {
            type: dataTypes.STRING,
            allowNull: true
        },
        
    };

    const config = {
        tableName: 'users',
        timestamps: false
    };
    const User = sequelize.define(alias, cols, config);
    return User;
}