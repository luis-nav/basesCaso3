const poolManager = require("./poolManager");

module.exports.prueba = async (req,res) => {
    const connection = await poolManager.get('Single', poolManager.configSingle);
    const data = await connection.request().query('SELECT 1');
    console.log(x);
    res.send(connection.request().query('SELECT 1'));
}