-- Correr primero
CREATE PROCEDURE [dbo].[SP_ConsultarResiduos]
AS
BEGIN
	SET NOCOUNT ON
	SET TRANSACTION ISOLATION LEVEL READ COMMITTED
	BEGIN TRANSACTION
	
	BEGIN TRY
		SELECT * FROM Residuos WHERE TipoResiduoID BETWEEN 1 AND 2
		WAITFOR DELAY '00:00:10'
		SELECT * FROM Residuos WHERE TipoResiduoID BETWEEN 1 AND 2
		COMMIT
	END TRY
	BEGIN CATCH
			ROLLBACK
	END CATCH	
END
RETURN 0
GO

USE esencialVerde
EXEC SP_ConsultarResiduos