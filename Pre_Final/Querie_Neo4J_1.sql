SELECT City.Nombre as Ciudad, Regi.Nombre as [Local EV],
SUM(
	RecLog.CantidadRecipientes * TipRec.Capacidad
) as Cantidad, 
UM.Unidad as [Unidad de Medida]
FROM
LocalesProductores LocProd
INNER JOIN Productores Prod on LocProd.ProductorID = Prod.ProductorID
INNER JOIN Contratos Cont on Prod.ProductorID = Cont.ProductorID
INNER JOIN RecipientesLogs RecLog on Cont.ContratoID = RecLog.ContratoID
INNER JOIN TiposRecipientes TipRec on RecLog.TipoRecipienteID = TipRec.TipoRecipienteID
INNER JOIN Ubicaciones Ubi on LocProd.UbicacionID = Ubi.UbicacionID
INNER JOIN Regiones Regi on Ubi.RegionID = Regi.RegionID
INNER JOIN Ciudades City on City.CiudadID = Ubi.CiudadID
INNER JOIN UnidadesDeMedidas UM on TipRec.UnidadDeMedidaID = UM.UnidadDeMedidaID
WHERE RecLog.AccionRecipienteID = 5
GROUP BY UM.Unidad, City.Nombre, Regi.Nombre;

-- SELECT * FROM RecipientesLogs;
-- SELECT * FROM AccionesRecipientes;

--UPDATE Ubicaciones SET CiudadID = 2 WHERE UbicacionID > 0;
--UPDATE Ubicaciones SET CiudadID = 1 WHERE UbicacionID = 3 or UbicacionID > 6;
--INSERT INTO RecipientesLogs (Hora, TipoRecipienteID, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, CantidadRecipientes, ResiduoID, CamionID, ContratoID)
--SELECT DATEADD(MINUTE, 30, Hora),TipoRecipienteID, IPAddress, Username, Checksum, LocalID, 5, CantidadRecipientes, ResiduoID, CamionID, ContratoID FROM RecipientesLogs