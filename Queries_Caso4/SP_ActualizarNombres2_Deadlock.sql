-- Correr segundo

CREATE PROCEDURE [dbo].[SP_ActualizarNombres2]
	@NombreProductor nchar(35),
	@NewNombreProductor nchar(35),
	@NombreActor nchar(35),
	@NewNombreActor nchar(35)
AS
BEGIN
	SET NOCOUNT ON
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	BEGIN TRANSACTION
	
	UPDATE Productores SET Nombre = @NewNombreProductor WHERE Nombre = @NombreProductor
	WAITFOR DELAY '00:00:10'
	UPDATE Actores SET Nombre = @NewNombreActor WHERE Nombre = @NombreActor
	COMMIT
END
RETURN 0
GO

USE esencialVerde
EXEC SP_ActualizarNombres2 'KFC', 'KFC3', 'Alejandro', 'Alejandro3'