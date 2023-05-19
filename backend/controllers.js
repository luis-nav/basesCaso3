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

module.exports.orm = async (req,res) => {
    const { accion } = req.params;
    const accionID = await req.app.locals.orm.AccionesRecipientes.findFirst({
        select: {AccionRecipienteID: true},
        where: {Descripcion: accion}
    });
    
    if (accionID === null) return res.send(`La accion ${accion} no es valida`);

    const recipientesLogs = await req.app.locals.orm.RecipientesLogs.findMany({
        select: {
            Hora: true,
            TipoRecipienteID: true,
            LocalID:true,
            AccionesRecipientes: {
                select: {
                    Descripcion: true
                }
            },
            ResiduoID: true,
        },
        where: {AccionRecipienteID: {equals: accionID.AccionRecipienteID}}
    });

    res.send(recipientesLogs);
}


//IGNORAR ESTO (Abrir firewall para que node de WSL2 conecte con MSSQL local)
// New-NetFirewallRule -DisplayName "WSL" -Direction Inbound -InterfaceAlias "vEthernet (WSL)" -Action Allow