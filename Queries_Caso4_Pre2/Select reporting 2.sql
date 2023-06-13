USE [esencialVerde];

declare @FechaInicial datetime2(7)
set @FechaInicial = CONVERT(datetime2(7), '2023-01-01 00:00:01')
declare @FechaFinal datetime2(7)
set @FechaFinal = CONVERT(datetime2(7), '2023-12-31 00:00:01')
declare @Lugar nchar(50)
set @Lugar = 'Costa Rica'
declare @RegionOPais nchar(50)
set @RegionOPais = 'Pais'

IF @RegionOPais = 'Pais'
WITH TiposResiduosPorContrato AS (
SELECT Cont.ContratoID, COUNT(DISTINCT TipRes.Tipo) as NumeroDeTiposResiduos
FROM Contratos Cont
INNER JOIN LocalesProductoresXContratos LocProdxCont on Cont.ContratoID = LocProdxCont.ContratoID
LEFT JOIN CiclosDeRecoleccion Ciclos on LocProdxCont.LocalProductorXContratoID = Ciclos.LocalProductorXContratoID
LEFT JOIN VolumenesRecoleccion Vols on Ciclos.CicloDeRecoleccionID = Vols.CicloDeRecoleccionID
INNER JOIN Residuos Res on Vols.ResiduoID = Res.ResiduoID
INNER JOIN TiposResiduos TipRes on Res.TipoResiduoID = TipRes.TipoResiduoID
GROUP BY Cont.ContratoID
),
DatosPorContratos AS
(
SELECT
P.Nombre as Lugar, 
Ind.Industria as Industria, 
TipRes.Tipo as TipoResiduo, 
CostoProc.Tarifa *
COUNT(ProcResLogs.ProcesoResiduoLogID) as Costo,

(Cont.CostoMensual * DATEDIFF(MONTH, @FechaInicial, @FechaFinal) /
(SELECT NumeroDeTiposResiduos FROM TiposResiduosPorContrato WHERE ContratoID = Cont.ContratoID)) 
as Cobrado
FROM
Paises P
LEFT JOIN Ubicaciones Ubi on Ubi.PaisID = P.PaisID
LEFT JOIN LocalesProductores LocProd on LocProd.UbicacionID = Ubi.UbicacionID
LEFT JOIN Productores Prod on Prod.ProductorID = LocProd.ProductorID
LEFT JOIN Regiones Reg on Ubi.RegionID = Reg.RegionID
INNER JOIN Industrias Ind on Prod.IndustriaID = Ind.IndustriaID
LEFT JOIN Contratos Cont on Cont.ProductorID = Prod.ProductorID
INNER JOIN Locales Locs on Reg.RegionID = Locs.RegionID
INNER JOIN ProcesosResiduosLogs ProcResLogs on Locs.LocalID = ProcResLogs.LocalID
LEFT JOIN Residuos Res on ProcResLogs.ResiduoID = Res.ResiduoID
LEFT JOIN TiposResiduos TipRes on Res.TipoResiduoID = TipRes.TipoResiduoID
LEFT JOIN ProcesosResiduos ProcRes on ProcRes.ResiduoID = Res.ResiduoID 
LEFT JOIN CostosProcesosXPaises CostoProc on CostoProc.ProcesoResiduoID = ProcRes.ProcesoResiduoID and P.PaisID = CostoProc.PaisID
WHERE P.Nombre = @Lugar and (Cont.InicioVigencia <= @FechaInicial or Cont.FinalVigencia >= @FechaFinal)
and ProcResLogs.Hora BETWEEN @FechaInicial AND @FechaFinal
GROUP BY P.Nombre, Ind.Industria, TipRes.Tipo, CostoProc.Tarifa, Cont.ContratoID, Cont.CostoMensual
),
DatosAgrupados as (
SELECT 
DatosPorContratos.Lugar, 
DatosPorContratos.Industria, 
DatosPorContratos.TipoResiduo,
DatosPorContratos.Costo as Costo,
SUM(DatosPorContratos.Cobrado) as Cobrado
FROM DatosPorContratos
GROUP BY DatosPorContratos.Lugar, DatosPorContratos.Industria , DatosPorContratos.TipoResiduo, DatosPorContratos.Costo
)
SELECT 
DatosAgrupados.Lugar, 
DatosAgrupados.Industria, 
DatosAgrupados.TipoResiduo,
ROUND(CAST(DatosAgrupados.Costo AS FLOAT), 2) as Costo,
ROUND(CAST(DatosAgrupados.Cobrado AS FLOAT), 2) as Cobrado,
ROUND(CAST(DatosAgrupados.Cobrado - DatosAgrupados.Costo AS FLOAT), 2) as Diferencia
FROM DatosAgrupados
ORDER BY DatosAgrupados.Lugar ASC, DatosAgrupados.Industria ASC, DatosAgrupados.TipoResiduo ASC, Diferencia DESC;


ELSE
WITH TiposResiduosPorContrato AS (
SELECT Cont.ContratoID, COUNT(DISTINCT TipRes.Tipo) as NumeroDeTiposResiduos
FROM Contratos Cont
INNER JOIN LocalesProductoresXContratos LocProdxCont on Cont.ContratoID = LocProdxCont.ContratoID
LEFT JOIN CiclosDeRecoleccion Ciclos on LocProdxCont.LocalProductorXContratoID = Ciclos.LocalProductorXContratoID
LEFT JOIN VolumenesRecoleccion Vols on Ciclos.CicloDeRecoleccionID = Vols.CicloDeRecoleccionID
INNER JOIN Residuos Res on Vols.ResiduoID = Res.ResiduoID
INNER JOIN TiposResiduos TipRes on Res.TipoResiduoID = TipRes.TipoResiduoID
GROUP BY Cont.ContratoID
),
DatosPorContratos AS
(
SELECT
Reg.Nombre as Lugar, 
Ind.Industria as Industria, 
TipRes.Tipo as TipoResiduo, 
CostoProc.Tarifa *
COUNT(ProcResLogs.ProcesoResiduoLogID) as Costo,

(Cont.CostoMensual * DATEDIFF(MONTH, @FechaInicial, @FechaFinal) /
(SELECT NumeroDeTiposResiduos FROM TiposResiduosPorContrato WHERE ContratoID = Cont.ContratoID)) 
as Cobrado
FROM
Regiones Reg
LEFT JOIN Ubicaciones Ubi on Ubi.RegionID = Reg.RegionID
LEFT JOIN Paises P on P.PaisID = Ubi.PaisID
LEFT JOIN LocalesProductores LocProd on LocProd.UbicacionID = Ubi.UbicacionID
LEFT JOIN Productores Prod on Prod.ProductorID = LocProd.ProductorID
INNER JOIN Industrias Ind on Prod.IndustriaID = Ind.IndustriaID
LEFT JOIN Contratos Cont on Cont.ProductorID = Prod.ProductorID
INNER JOIN Locales Locs on Reg.RegionID = Locs.RegionID
INNER JOIN ProcesosResiduosLogs ProcResLogs on Locs.LocalID = ProcResLogs.LocalID
LEFT JOIN Residuos Res on ProcResLogs.ResiduoID = Res.ResiduoID
LEFT JOIN TiposResiduos TipRes on Res.TipoResiduoID = TipRes.TipoResiduoID
INNER JOIN ProcesosResiduos ProcRes on ProcRes.ResiduoID = Res.ResiduoID 
LEFT JOIN CostosProcesosXPaises CostoProc on CostoProc.ProcesoResiduoID = ProcRes.ProcesoResiduoID and P.PaisID = CostoProc.PaisID
WHERE Reg.Nombre = @Lugar and (Cont.InicioVigencia <= @FechaInicial or Cont.FinalVigencia >= @FechaFinal)
and ProcResLogs.Hora BETWEEN @FechaInicial AND @FechaFinal
GROUP BY Reg.Nombre, Ind.Industria, TipRes.Tipo, CostoProc.Tarifa, Cont.ContratoID, Cont.CostoMensual
),
DatosAgrupados as (
SELECT 
DatosPorContratos.Lugar, 
DatosPorContratos.Industria, 
DatosPorContratos.TipoResiduo,
DatosPorContratos.Costo as Costo,
SUM(DatosPorContratos.Cobrado) as Cobrado
FROM DatosPorContratos
GROUP BY DatosPorContratos.Lugar, DatosPorContratos.Industria , DatosPorContratos.TipoResiduo, DatosPorContratos.Costo
)
SELECT 
DatosAgrupados.Lugar, 
DatosAgrupados.Industria, 
DatosAgrupados.TipoResiduo,
ROUND(CAST(DatosAgrupados.Costo AS FLOAT), 2) as Costo,
ROUND(CAST(DatosAgrupados.Cobrado AS FLOAT), 2) as Cobrado,
ROUND(CAST(DatosAgrupados.Cobrado - DatosAgrupados.Costo AS FLOAT), 2) as Diferencia
FROM DatosAgrupados
ORDER BY DatosAgrupados.Lugar ASC, DatosAgrupados.Industria ASC, DatosAgrupados.TipoResiduo ASC, Diferencia DESC;