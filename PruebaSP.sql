DECLARE @ContractTVP AS NuevoContrato;

INSERT INTO @ContractTVP (InicioVigencia, FinalVigencia, ProductorID, CostoMensual, MonedaID, TipoDeCambioID)
   VALUES (NULL, '2023-12-25', 1, 150000, 1, 1)

EXEC SP_AgregarCicloContrato @ContractTVP, '2023-04-25 10:00:00', 7, 1, 1;

SELECT * FROM Contratos
SELECT * FROM CiclosDeRecoleccion