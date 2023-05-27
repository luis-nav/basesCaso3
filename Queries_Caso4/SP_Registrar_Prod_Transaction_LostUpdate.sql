CREATE PROCEDURE [dbo].[EVSP_RegistrarTransaccion]
	@EmpresaOrigen NCHAR(50),
	@EmpresaFinal NCHAR(50),
	@Monto BIGINT,
	@Moneda VARCHAR(30)
AS
BEGIN

	SET NOCOUNT ON -- no retorne metadatos

	DECLARE @ErrorNumber INT, @ErrorSeverity INT, @ErrorState INT, @CustomError INT
	DECLARE @Message VARCHAR(200)
	DECLARE @InicieTransaccion BIT

	-- declaracion de otras variables
	DECLARE @TipoDeCambioID int
	DECLARE @MonedaID int
	DECLARE @OrigenID int
	DECLARE @DestinatarioID int
	DECLARE @BalanceOrigen int
	DECLARE @BalanceDestinatario int
	DECLARE @TransID bigint
	
	-- operaciones de select que no tengan que ser bloqueadas
	SET @MonedaID = (SELECT TOP 1 MonedaID FROM Monedas WHERE Nombre = @Moneda)
	SET @TipoDeCambioID = (SELECT TOP 1 TipoDeCambioID FROM TiposDeCambio WHERE [Default] = 1 AND MonedaID = @MonedaID)
	SET @OrigenID = (SELECT TOP 1 ProductorID FROM Productores WHERE Nombre = @EmpresaOrigen)
	SET @DestinatarioID = (SELECT TOP 1 ProductorID FROM Productores WHERE Nombre = @EmpresaFinal)

	IF @OrigenID IS NULL OR @DestinatarioID IS NULL BEGIN
		SET @ErrorNumber = 54000
		SET @ErrorSeverity = 10000
		SET @ErrorState = 10000
		SET @CustomError = 2004
		SET @Message = 'Las empresas no son validas'
		RAISERROR('%s - Error Number: %i',
			@ErrorSeverity, @ErrorState, @Message, @CustomError)
	END
	-- tratar de hacer todo lo posible antes de q inice la transaccion

	SET @InicieTransaccion = 0
	IF @@TRANCOUNT=0 BEGIN
		SET @InicieTransaccion = 1
		SET TRANSACTION ISOLATION LEVEL READ COMMITTED
		BEGIN TRANSACTION
	END

	BEGIN TRY
		SET @CustomError = 2001

		SET @BalanceOrigen = (SELECT TOP 1 MontoTotal FROM BalancesLogs WHERE ProductorID = @OrigenID  ORDER BY PostTime DESC)
		SET @BalanceDestinatario = (SELECT TOP 1 MontoTotal FROM BalancesLogs WHERE ProductorID = @DestinatarioID ORDER BY PostTime DESC)
		IF @BalanceOrigen < @Monto BEGIN
			ROLLBACK
		END
		WAITFOR DELAY '00:00:15';

		INSERT INTO Transacciones (OrigenID, DestinatarioID, MonedaID, Monto, PostTime, IPAddress, Username, Checksum) VALUES
		(@OrigenID, @DestinatarioID, @MonedaID, @Monto, SYSUTCDATETIME(), '127.0.0.1', 'Luis', CHECKSUM(@OrigenID, @DestinatarioID, @MonedaID, @Monto, SYSUTCDATETIME(), '127.0.0.1', 'Luis'));

		SET @TransID = (SELECT @@IDENTITY)

		INSERT INTO BalancesLogs (MonedaID, MontoTotal, MontoA�adido, PostTime, IPAddress, Username, TipoDeCambioID, ProductorID, TransaccionID, Cheksum) VALUES
		(@MonedaID, @BalanceOrigen - @Monto, @Monto * -1, SYSUTCDATETIME(), '127.0.0.1', 'Luis', @TipoDeCambioID, @OrigenID, @TransID, CHECKSUM(@MonedaID, @BalanceOrigen - @Monto, @Monto * -1, SYSUTCDATETIME(), '127.0.0.1', 'Luis', @TipoDeCambioID, @OrigenID, @TransID));

		

		INSERT INTO BalancesLogs (MonedaID, MontoTotal, MontoA�adido, PostTime, IPAddress, Username, TipoDeCambioID, ProductorID, TransaccionID, Cheksum) VALUES
		(@MonedaID, @BalanceDestinatario + @Monto, @Monto, SYSUTCDATETIME(), '127.0.0.1', 'Luis', @TipoDeCambioID, @DestinatarioID, @TransID, CHECKSUM(@MonedaID, @BalanceDestinatario + @Monto, @Monto, SYSUTCDATETIME(), '127.0.0.1', 'Luis', @TipoDeCambioID, @DestinatarioID, @TransID));
		

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


-- EXEC EVSP_RegistrarTransaccion 'McDonalds', 'KFC', 2000, 'CR Colon'
-- EXEC EVSP_RegistrarTransaccion 'McDonalds', 'KFC', 1000, 'CR Colon'
