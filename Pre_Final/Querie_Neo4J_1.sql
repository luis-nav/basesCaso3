
--- First Perspective

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
WHERE RecLog.AccionRecipienteID = 5 AND RecLog.Hora <= GETUTCDATE()
GROUP BY UM.Unidad, City.Nombre, Regi.Nombre;

SELECT CiudadID, Nombre FROM Ciudades;
SELECT Loc.LocalID, Reg.Nombre FROM Locales Loc INNER JOIN Regiones Reg on Loc.RegionID = Reg.RegionID;

-- Second Perspective
SELECT Prod.Nombre as [Empresa Productora], Regi.Nombre as [Local EV],
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
INNER JOIN UnidadesDeMedidas UM on TipRec.UnidadDeMedidaID = UM.UnidadDeMedidaID
WHERE RecLog.AccionRecipienteID = 5 AND RecLog.Hora <= GETUTCDATE()
GROUP BY UM.Unidad, Prod.Nombre, Regi.Nombre;

SELECT ProductorID, Nombre FROM Productores;

-- Third Perspective
SELECT EmprRec.Nombre as [Empresa Recolectora], Regi.Nombre as [Local EV],
SUM(
	RecLog.CantidadRecipientes * TipRec.Capacidad
) as Cantidad, 
UM.Unidad as [Unidad de Medida]
FROM
Contratos Cont
INNER JOIN EmpresasRecolectoras EmprRec on Cont.EmpresaRecolectoraID = EmprRec.EmpresaRecolectoraID
INNER JOIN RecipientesLogs RecLog on Cont.ContratoID = RecLog.ContratoID
INNER JOIN TiposRecipientes TipRec on RecLog.TipoRecipienteID = TipRec.TipoRecipienteID
INNER JOIN Locales Loc on Loc.LocalID = RecLog.LocalID
INNER JOIN Ubicaciones Ubi on Loc.UbicacionID = Ubi.UbicacionID
INNER JOIN Regiones Regi on Ubi.RegionID = Regi.RegionID
INNER JOIN UnidadesDeMedidas UM on TipRec.UnidadDeMedidaID = UM.UnidadDeMedidaID
WHERE RecLog.AccionRecipienteID = 5 AND RecLog.Hora <= GETUTCDATE()
GROUP BY UM.Unidad, EmprRec.Nombre, Regi.Nombre;

SELECT EmpresaRecolectoraID, Nombre FROM EmpresasRecolectoras;

--Cambio Data de pruebas
--UPDATE Ubicaciones SET CiudadID = 2 WHERE UbicacionID > 0;
--UPDATE Ubicaciones SET CiudadID = 1 WHERE UbicacionID = 3 or UbicacionID > 6;
--INSERT INTO RecipientesLogs (Hora, TipoRecipienteID, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, CantidadRecipientes, ResiduoID, CamionID, ContratoID)
--SELECT DATEADD(MINUTE, 30, Hora),TipoRecipienteID, IPAddress, Username, Checksum, LocalID, 5, CantidadRecipientes, ResiduoID, CamionID, ContratoID FROM RecipientesLogs
--INSERT INTO AccionesRecipientes (Descripcion) VALUES ('Entregar a Recolector');
--INSERT INTO Contratos (InicioVigencia, FinalVigencia, EmpresaRecolectoraID, CostoMensual, MonedaID, TipoDeCambioID)
--VALUES (CONVERT(date, '2023-01-01'), CONVERT(date, '2023-12-31'), 2, 40000, 1, 1);
--INSERT INTO RecipientesLogs (Hora, TipoRecipienteID, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, CantidadRecipientes, ResiduoID, CamionID, ContratoID)
--SELECT Hora,TipoRecipienteID, IPAddress, Username, Checksum, LocalID, 5, FLOOR(CantidadRecipientes/1.5), ResiduoID, CamionID, 3 
--FROM RecipientesLogs
--WHERE AccionRecipienteID = 5 AND ContratoID = 1;
--DELETE FROM RecipientesLogs WHERE AccionRecipienteID = 5 AND CantidadRecipientes > 200;



