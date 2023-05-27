CREATE PROCEDURE SP_ActualizarNombres2
	@NombreProductor nchar(35),
	@NewNombreProductor nchar(35),
	@NombreActor nchar(35),
	@NewNombreActor nchar(35)
AS
BEGIN
	SET NOCOUNT ON
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	BEGIN TRANSACTION
	
	BEGIN TRY
		UPDATE Actores SET Nombre = 'Alejandro2' WHERE Nombre = 'Alejandro'
		WAITFOR DELAY '00:00:10'
		UPDATE Productores SET Nombre = 'KFC2' WHERE Nombre = 'KFC'
		COMMIT
	END TRY
	BEGIN CATCH
			ROLLBACK
	END CATCH
END
RETURN 0
GO