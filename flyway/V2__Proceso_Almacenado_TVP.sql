CREATE TYPE NuevoContrato 
   AS TABLE
      ( InicioVigencia DATE,
		FinalVigencia DATE,
		ProductorID INT,
		CostoMensual DECIMAL(18,5),
		MonedaID INT,
		TipoDeCambioID INT );
GO

CREATE PROCEDURE [dbo].[SP_AgregarCicloContrato]
	@TVPContrato NuevoContrato READONLY,
	@Inicio DATETIME2(7),
	@Frecuencia INT,
	@LocalProductorID INT,
	@LocalProductorXContratoID INT
AS 
BEGIN
	
	SET NOCOUNT ON
	
	DECLARE @ErrorNumber INT, @ErrorSeverity INT, @ErrorState INT, @CustomError INT
	DECLARE @Message VARCHAR(200)
	DECLARE @InicieTransaccion BIT
	DECLARE @ContratoID INT

	SET @InicieTransaccion = 0
	IF @@TRANCOUNT=0 BEGIN
		SET @InicieTransaccion = 1
		SET TRANSACTION ISOLATION LEVEL READ COMMITTED
		BEGIN TRANSACTION		
	END
	
	BEGIN TRY
		SET @CustomError = 2001

		INSERT INTO Contratos SELECT InicioVigencia, FinalVigencia, ProductorID, CostoMensual, MonedaID, TipoDeCambioID 
		FROM @TVPContrato
		SET @ContratoID = @@IDENTITY
		INSERT INTO CiclosDeRecoleccion (Inicio, Frecuencia, ContratoID, LocalProductorID, LocalProductorXContratoID)
		VALUES (@Inicio, @Frecuencia, @ContratoID, @LocalProductorID, @LocalProductorXContratoID)

		IF @InicieTransaccion=1 BEGIN
			COMMIT
		END
	END TRY
	BEGIN CATCH
		SET @ErrorNumber = ERROR_NUMBER()
		SET @ErrorSeverity = ERROR_SEVERITY()
		SET @ErrorState = ERROR_STATE()
		SET @Message = ERROR_MESSAGE()
		
		IF @InicieTransaccion=1 BEGIN
			ROLLBACK
		END
		RAISERROR('%s - Error Number: %i', 
			@ErrorSeverity, @ErrorState, @Message, @CustomError)
	END CATCH	
END
RETURN 0
GO


--	DECLARE @ContractTVP AS NuevoContrato;

--	INSERT INTO @ContractTVP (InicioVigencia, FinalVigencia, ProductorID, CostoMensual, MonedaID, TipoDeCambioID)
--    VALUES (NULL, '2023-12-25', 1, 150000, 1, 1)

--	EXEC SP_AgregarCicloContrato @ContractTVP, '2023-04-25 10:00:00', 7, 1, 1;

--	SELECT * FROM Contratos
--	SELECT * FROM CiclosDeRecoleccion