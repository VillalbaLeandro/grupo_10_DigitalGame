module.exports = (sequelize, dataTypes) => {
    const alias = 'Player';

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
        tableName: 'players',
        timestamps: false
    };
    const Player = sequelize.define(alias, cols, config);
    return Player;
}