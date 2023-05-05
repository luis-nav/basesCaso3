USE [esencialVerde]

SELECT Loc.LocalID, Re.Nombre AS Residuo, SUM(CantidadRecipientes) * TiRec.Capacidad  as Cantidad, AccRec.Descripcion, Brand.Nombre
FROM Locales Loc
RIGHT JOIN RecipientesLogs RLog on Loc.LocalID = RLog.LocalID
LEFT JOIN Residuos Re on Re.ResiduoID = RLog.ResiduoID
LEFT JOIN TiposRecipientes TiRec on TiRec.TipoRecipienteID = RLog.TipoRecipienteID
INNER JOIN AccionesRecipientes AccRec on AccRec.AccionRecipienteID = RLog.AccionRecipienteID
INNER JOIN BrandsRecipientes Brand on Brand.BrandRecipienteID = TiRec.BrandRecipienteID
WHERE AccRec.AccionRecipienteID = 3 AND RLog.Hora > CONVERT(datetime2(7), '2023-06-15 00:00:01')
GROUP BY Loc.LocalID, Re.Nombre, TiRec.Capacidad, AccRec.Descripcion, Brand.Nombre
EXCEPT 
SELECT Loc.LocalID, Re.Nombre AS Residuo, SUM(CantidadRecipientes) * TiRec.Capacidad  as Cantidad, AccRec.Descripcion, Brand.Nombre
FROM Locales Loc
RIGHT JOIN RecipientesLogs RLog on Loc.LocalID = RLog.LocalID
LEFT JOIN Residuos Re on Re.ResiduoID = RLog.ResiduoID
LEFT JOIN TiposRecipientes TiRec on TiRec.TipoRecipienteID = RLog.TipoRecipienteID
INNER JOIN AccionesRecipientes AccRec on AccRec.AccionRecipienteID = RLog.AccionRecipienteID
INNER JOIN BrandsRecipientes Brand on Brand.BrandRecipienteID = TiRec.BrandRecipienteID
WHERE AccRec.AccionRecipienteID = 3 AND RLog.Hora > CONVERT(datetime2(7), '2023-06-15 00:00:01') AND RLog.ResiduoID = 3
GROUP BY Loc.LocalID, Re.Nombre, TiRec.Capacidad, AccRec.Descripcion, Brand.Nombre
ORDER BY Loc.LocalID, Cantidad DESC
FOR JSON PATH, ROOT('Base');
-- 43s


--Despues de primera y segunda norma
SELECT Loc.LocalID, Re.Nombre AS Residuo, SUM(CantidadRecipientes) * TiRec.Capacidad  as Cantidad, AccRec.Descripcion, Brand.Nombre
FROM Locales Loc
RIGHT JOIN RecipientesLogs RLog on Loc.LocalID = RLog.LocalID
LEFT JOIN Residuos Re on Re.ResiduoID = RLog.ResiduoID
LEFT JOIN TiposRecipientes TiRec on TiRec.TipoRecipienteID = RLog.TipoRecipienteID
INNER JOIN AccionesRecipientes AccRec on AccRec.AccionRecipienteID = RLog.AccionRecipienteID
INNER JOIN BrandsRecipientes Brand on Brand.BrandRecipienteID = TiRec.BrandRecipienteID
WHERE AccRec.AccionRecipienteID = 3 AND RLog.Hora > CONVERT(datetime2(7), '2023-06-15 00:00:01')
GROUP BY Loc.LocalID, Re.Nombre, TiRec.Capacidad, AccRec.Descripcion, Brand.Nombre
EXCEPT 
SELECT Loc.LocalID, Re.Nombre AS Residuo, SUM(CantidadRecipientes) * TiRec.Capacidad  as Cantidad, AccRec.Descripcion, Brand.Nombre
FROM Locales Loc
RIGHT JOIN RecipientesLogs RLog on Loc.LocalID = RLog.LocalID
LEFT JOIN Residuos Re on Re.ResiduoID = RLog.ResiduoID
LEFT JOIN TiposRecipientes TiRec on TiRec.TipoRecipienteID = RLog.TipoRecipienteID
INNER JOIN AccionesRecipientes AccRec on AccRec.AccionRecipienteID = RLog.AccionRecipienteID
INNER JOIN BrandsRecipientes Brand on Brand.BrandRecipienteID = TiRec.BrandRecipienteID
WHERE AccRec.AccionRecipienteID = 3 AND RLog.Hora > CONVERT(datetime2(7), '2023-06-15 00:00:01') AND Re.ResiduoID = 3
GROUP BY Loc.LocalID, Re.Nombre, TiRec.Capacidad, AccRec.Descripcion, Brand.Nombre
ORDER BY Loc.LocalID, Cantidad DESC
FOR JSON PATH, ROOT('Base');


--Despues de primera y segunda norma
SELECT Loc.LocalID, Re.Nombre AS Residuo, SUM(CantidadRecipientes) * TiRec.Capacidad  as Cantidad, AccRec.Descripcion, Brand.Nombre
FROM Locales Loc
RIGHT JOIN RecipientesLogs RLog on Loc.LocalID = RLog.LocalID
LEFT JOIN Residuos Re on Re.ResiduoID = RLog.ResiduoID
LEFT JOIN TiposRecipientes TiRec on TiRec.TipoRecipienteID = RLog.TipoRecipienteID
INNER JOIN AccionesRecipientes AccRec on AccRec.AccionRecipienteID = RLog.AccionRecipienteID
INNER JOIN BrandsRecipientes Brand on Brand.BrandRecipienteID = TiRec.BrandRecipienteID
WHERE AccRec.AccionRecipienteID = 3 AND RLog.Hora > CONVERT(datetime2(7), '2023-06-15 00:00:01')
GROUP BY Loc.LocalID, Re.Nombre, TiRec.Capacidad, AccRec.Descripcion, Brand.Nombre
EXCEPT 
SELECT Loc.LocalID, Re.Nombre AS Residuo, SUM(CantidadRecipientes) * TiRec.Capacidad  as Cantidad, AccRec.Descripcion, Brand.Nombre
FROM Locales Loc
RIGHT JOIN RecipientesLogs RLog on Loc.LocalID = RLog.LocalID
LEFT JOIN Residuos Re on Re.ResiduoID = RLog.ResiduoID
LEFT JOIN TiposRecipientes TiRec on TiRec.TipoRecipienteID = RLog.TipoRecipienteID
INNER JOIN AccionesRecipientes AccRec on AccRec.AccionRecipienteID = RLog.AccionRecipienteID
INNER JOIN BrandsRecipientes Brand on Brand.BrandRecipienteID = TiRec.BrandRecipienteID
WHERE AccRec.AccionRecipienteID = 3 AND RLog.Hora > CONVERT(datetime2(7), '2023-06-15 00:00:01') AND Re.ResiduoID = 3
GROUP BY Loc.LocalID, Re.Nombre, TiRec.Capacidad, AccRec.Descripcion, Brand.Nombre
ORDER BY Loc.LocalID, Cantidad DESC
FOR JSON PATH, ROOT('Base');


-- CTE
WITH CARGA_LOCAL_POR_BRAND_SOLIDOS AS
(
	SELECT Loc.LocalID, Re.Nombre AS Residuo, SUM(CantidadRecipientes) * TiRec.Capacidad  as Cantidad, AccRec.Descripcion, Brand.Nombre
	FROM Locales Loc
	RIGHT JOIN RecipientesLogs RLog on Loc.LocalID = RLog.LocalID
	LEFT JOIN Residuos Re on Re.ResiduoID = RLog.ResiduoID
	LEFT JOIN TiposRecipientes TiRec on TiRec.TipoRecipienteID = RLog.TipoRecipienteID
	INNER JOIN AccionesRecipientes AccRec on AccRec.AccionRecipienteID = RLog.AccionRecipienteID
	INNER JOIN BrandsRecipientes Brand on Brand.BrandRecipienteID = TiRec.BrandRecipienteID
	WHERE AccRec.AccionRecipienteID = 3 AND RLog.Hora > CONVERT(datetime2(7), '2023-06-15 00:00:01') AND Re.ResiduoID = 3
	GROUP BY Loc.LocalID, Re.Nombre, TiRec.Capacidad, AccRec.Descripcion, Brand.Nombre
)

SELECT Loc.LocalID, Re.Nombre AS Residuo, SUM(CantidadRecipientes) * TiRec.Capacidad  as Cantidad, AccRec.Descripcion, Brand.Nombre
FROM Locales Loc
RIGHT JOIN RecipientesLogs RLog on Loc.LocalID = RLog.LocalID
LEFT JOIN Residuos Re on Re.ResiduoID = RLog.ResiduoID
LEFT JOIN TiposRecipientes TiRec on TiRec.TipoRecipienteID = RLog.TipoRecipienteID
INNER JOIN AccionesRecipientes AccRec on AccRec.AccionRecipienteID = RLog.AccionRecipienteID
INNER JOIN BrandsRecipientes Brand on Brand.BrandRecipienteID = TiRec.BrandRecipienteID
WHERE AccRec.AccionRecipienteID = 3 AND RLog.Hora > CONVERT(datetime2(7), '2023-06-15 00:00:01')
GROUP BY Loc.LocalID, Re.Nombre, TiRec.Capacidad, AccRec.Descripcion, Brand.Nombre
EXCEPT 
SELECT * FROM CARGA_LOCAL_POR_BRAND_SOLIDOS
ORDER BY Loc.LocalID, Cantidad DESC
FOR JSON PATH, ROOT('Base');