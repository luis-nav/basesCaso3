CREATE VIEW USO_DE_BRANDS AS
SELECT
Res.Nombre AS Residuo,
Brand.Nombre AS Brand_Name, 
COUNT(Rlog.AccionRecipienteID) AS Veces_Recogidos, 
Trec.Capacidad * SUM(Rlog.CantidadRecipientes) AS  Capacidad_Utilizada,
Unidad.Unidad AS Unidad
FROM RecipientesLogs Rlog
LEFT JOIN TiposRecipientes Trec on Rlog.TipoRecipienteID = Trec.TipoRecipienteID
LEFT JOIN BrandsRecipientes Brand on Brand.BrandRecipienteID = Trec.BrandRecipienteID
INNER JOIN Residuos Res on Res.ResiduoID = Rlog.ResiduoID
LEFT JOIN UnidadesDeMedidas Unidad on Unidad.UnidadDeMedidaID = Res.UnidadDeMedidaID
WHERE Rlog.AccionRecipienteID = 3
GROUP BY Res.Nombre, Brand.Nombre, Trec.Capacidad, Unidad.Unidad;