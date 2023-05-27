CREATE PROCEDURE SP_ActualizarNombres1
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
		UPDATE Productores SET Nombre = 'KFC3' WHERE Nombre = 'KFC'
		WAITFOR DELAY '00:00:10'
		UPDATE Actores SET Nombre = 'Alejandro3' WHERE Nombre = 'Alejandro'
		COMMIT
	END TRY
	BEGIN CATCH
			ROLLBACK
	END CATCH
END
RETURN 0
GO