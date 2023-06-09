select * from Productores
select * from LocalesProductores
select * from Ubicaciones
select * from Regiones

--select r.Nombre, p.Nombre, tr.Nombre, ppxp.Precio, v.MontoTotal, ppxp.Precio - v.MontoTotal as diferencia from Ubicaciones as u
--inner join Regiones as r on u.RegionID = r.RegionID
--inner join LocalesProductores as lp on u.UbicacionID = lp.UbicacionID
--inner join Productores as p on lp.ProductorID = p.ProductorID
--inner join Residuos as res on 
--where r.Nombre = 'San Jose Oeste'

IF @RegionOPais = 'Pais'
SELECT P.Nombre as Lugar, Ind.Industria as Industria, tr.Tipo as TipoResiduo, PrecProduXPais.Precio, Con.CostoMensual, PrecProduXPais.Precio - Con.CostoMensual as Diferencia
FROM
LocalesProductores LocProd
INNER JOIN Productores Prod on LocProd.ProductorID = Prod.ProductorID
INNER JOIN Ubicaciones Ubi on LocProd.UbicacionID = Ubi.UbicacionID
INNER JOIN Regiones Regi on Ubi.RegionID = Regi.RegionID
INNER JOIN Locales Loc on Loc.RegionID = Regi.RegionID
INNER JOIN RecipientesLogs RecLog on Loc.LocalID = RecLog.LocalID
INNER JOIN TiposRecipientes TipRec on RecLog.TipoRecipienteID = TipRec.TipoRecipienteID
INNER JOIN LotesDesechos LotDes on RecLog.LoteDesechoID = LotDes.LoteDesechoID
INNER JOIN ProcesosResiduosLogs ProcResLog on ProcResLog.LoteDesechoID = LotDes.LoteDesechoID
INNER JOIN CostosProcesosXPaises CostProc on ProcResLog.CostoProcesoXPaisID = CostProc.CostoProcesoXPaisID
INNER JOIN Residuos Res on RecLog.ResiduoID = Res.ResiduoID
INNER JOIN TiposResiduos as tr on res.TipoResiduoID = tr.TipoResiduoID
INNER JOIN UnidadesDeMedidas as um on res.UnidadDeMedidaID = um.UnidadDeMedidaID
INNER JOIN ProcesosResiduos ProcRes on Res.ResiduoID = ProcRes.ResiduoID
INNER JOIN Productos Produ on Produ.ProcesoResiduoID = ProcRes.ProcesoResiduoID
INNER JOIN ProductosXVentas ProduXVent on ProduXVent.ProductoID = Produ.ProductoID
INNER JOIN PreciosProductosXPaises PrecProduXPais on ProduXVent.PrecioProductoID = PrecProduXPais.PrecioProductoXPaisID
INNER JOIN Monedas on Monedas.MonedaID = PrecProduXPais.MonedaID
INNER JOIN Contratos as Con on Con.ContratoID = RecLog.ContratoID
INNER JOIN Industrias as Ind on Ind.IndustriaID = Prod.IndustriaID
INNER JOIN Paises as P on P.PaisID = Ubi.PaisID
WHERE P.Nombre = @Lugar AND RecLog.Hora BETWEEN @FechaInicial AND @FechaFinal
ELSE
SELECT Regi.Nombre as Lugar, Ind.Industria as Industria, tr.Tipo as TipoResiduo, PrecProduXPais.Precio, Con.CostoMensual, PrecProduXPais.Precio - Con.CostoMensual as Diferencia
FROM
LocalesProductores LocProd
INNER JOIN Productores Prod on LocProd.ProductorID = Prod.ProductorID
INNER JOIN Ubicaciones Ubi on LocProd.UbicacionID = Ubi.UbicacionID
INNER JOIN Regiones Regi on Ubi.RegionID = Regi.RegionID
INNER JOIN Locales Loc on Loc.RegionID = Regi.RegionID
INNER JOIN RecipientesLogs RecLog on Loc.LocalID = RecLog.LocalID
INNER JOIN TiposRecipientes TipRec on RecLog.TipoRecipienteID = TipRec.TipoRecipienteID
INNER JOIN LotesDesechos LotDes on RecLog.LoteDesechoID = LotDes.LoteDesechoID
INNER JOIN ProcesosResiduosLogs ProcResLog on ProcResLog.LoteDesechoID = LotDes.LoteDesechoID
INNER JOIN CostosProcesosXPaises CostProc on ProcResLog.CostoProcesoXPaisID = CostProc.CostoProcesoXPaisID
INNER JOIN Residuos Res on RecLog.ResiduoID = Res.ResiduoID
INNER JOIN TiposResiduos as tr on res.TipoResiduoID = tr.TipoResiduoID
INNER JOIN UnidadesDeMedidas as um on res.UnidadDeMedidaID = um.UnidadDeMedidaID
INNER JOIN ProcesosResiduos ProcRes on Res.ResiduoID = ProcRes.ResiduoID
INNER JOIN Productos Produ on Produ.ProcesoResiduoID = ProcRes.ProcesoResiduoID
INNER JOIN ProductosXVentas ProduXVent on ProduXVent.ProductoID = Produ.ProductoID
INNER JOIN PreciosProductosXPaises PrecProduXPais on ProduXVent.PrecioProductoID = PrecProduXPais.PrecioProductoXPaisID
INNER JOIN Monedas on Monedas.MonedaID = PrecProduXPais.MonedaID
INNER JOIN Contratos as Con on Con.ContratoID = RecLog.ContratoID
INNER JOIN Industrias as Ind on Ind.IndustriaID = Prod.IndustriaID
INNER JOIN Paises as P on P.PaisID = Ubi.PaisID
WHERE Regi.Nombre = @Lugar AND RecLog.Hora BETWEEN @FechaInicial AND @FechaFinal
ORDER BY Diferencia DESC