-- Correr primero

CREATE PROCEDURE [dbo].[SP_ActualizarNombres1]
	@NombreProductor nchar(35),
	@NewNombreProductor nchar(35),
	@NombreActor nchar(35),
	@NewNombreActor nchar(35)
AS
BEGIN
	SET NOCOUNT ON
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	BEGIN TRANSACTION

	UPDATE Actores SET Nombre = @NewNombreActor WHERE Nombre = @NombreActor
	WAITFOR DELAY '00:00:10'
	UPDATE Productores SET Nombre = @NewNombreProductor WHERE Nombre = @NombreProductor
	COMMIT
END
RETURN 0
GO

USE esencialVerde
EXEC SP_ActualizarNombres1 'KFC', 'KFC2', 'Alejandro', 'Alejandro2'