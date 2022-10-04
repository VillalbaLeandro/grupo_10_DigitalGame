module.exports = (sequelize, dataTypes) => {
    const alias = 'Player';

    const cols = {
        id: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        name: dataTypes.STRING,
        
    };

    const config = {
        tableName: 'players',
        timestamps: false
    };
    const Player = sequelize.define(alias, cols, config);
    return Player;
}