CREATE VIEW EVV_RECIP_LOGS_LAST_MONTH WITH SCHEMABINDING AS
SELECT RL.Hora, RL.LocalID as Local_Escencial_Verde, Prods.Nombre,  BR.Nombre as Marca, AR.Descripcion as Accion, R.Nombre as Residuo, RL.CantidadRecipientes * TR.Capacidad as Cantidad, UM.Unidad as Unidad
FROM [dbo].RecipientesLogs RL
INNER JOIN [dbo].AccionesRecipientes AR on RL.AccionRecipienteID = AR.AccionRecipienteID
INNER JOIN [dbo].Residuos R on R.ResiduoID = RL.ResiduoID
INNER JOIN [dbo].TiposRecipientes TR on TR.TipoRecipienteID = RL.TipoRecipienteID
INNER JOIN [dbo].BrandsRecipientes BR on TR.BrandRecipienteID = BR.BrandRecipienteID
INNER JOIN [dbo].UnidadesDeMedidas UM on TR.UnidadDeMedidaID = UM.UnidadDeMedidaID
INNER JOIN [dbo].Contratos Con on Con.ContratoID = RL.ContratoID
INNER JOIN [dbo].Productores Prods on Con.ProductorID = Prods.ProductorID
WHERE RL.Hora BETWEEN DATEADD(MONTH, -1, SYSUTCDATETIME()) AND SYSUTCDATETIME();
