-- carla lector contratos
USE esencialVerde
SELECT ContratoID, InicioVigencia, FinalVigencia, ProductorID, CostoMensual, MonedaID, EmpresaRecolectoraID, TipoDeCambioID FROM Contratos -- restriccion
SELECT ContratoID, InicioVigencia, FinalVigencia, ProductorID, CostoMensual, MonedaID, EmpresaRecolectoraID FROM Contratos
SELECT TipoDeCambioID FROM Contratos -- restriccion
INSERT INTO Contratos VALUES (CONVERT(date, '2023-01-01'), CONVERT(date, '2023-01-06'), 1, 500000, 1, 1, 1)