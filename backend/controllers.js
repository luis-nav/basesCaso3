const poolManager = require("./poolManager");
const { VarChar } = require("mssql")

module.exports.single = async (req,res) => {
    const { accion } = req.params;
    const connection = await poolManager.get('Single', poolManager.configSingle);
    const request = connection.request();
    request.input('Accion', VarChar, accion);
    request.execute('SP_VerTipoRecipientesLogs', (err, result) => {
        if (result.returnValue ===  1) res.send(`La accion ${accion} no es valida`);
        if (err) res.send("ERORR!");
        res.send(result.recordset);
    })
}

module.exports.pool = async (req,res) => {
    const { accion } = req.params;
    const connection = await poolManager.get('Pool', poolManager.configPool);
    const request = connection.request();
    request.input('Accion', VarChar, accion);
    request.execute('SP_VerTipoRecipientesLogs', (err, result) => {
        if (result.returnValue ===  1) res.send(`La accion ${accion} no es valida`);
        if (err) res.send("ERORR!");
        res.send(result.recordset);
    })
}