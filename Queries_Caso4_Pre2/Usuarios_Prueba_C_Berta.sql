-- berta admin contratos
USE esencialVerde
SELECT ContratoID, InicioVigencia, FinalVigencia, ProductorID, CostoMensual, MonedaID, EmpresaRecolectoraID FROM Contratos
INSERT INTO Contratos VALUES (CONVERT(date, '2023-01-01'), CONVERT(date, '2023-01-06'), 1, 500000, 1, 1, 1)
DELETE FROM Contratos WHERE ContratoID = 51