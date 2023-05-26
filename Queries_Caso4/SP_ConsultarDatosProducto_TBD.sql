CREATE PROCEDURE SP_ConsultarDatosProductor
    @NombreProductor nchar(50)
AS
BEGIN
	SET NOCOUNT ON
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	BEGIN TRANSACTION
	
	BEGIN TRY
		SELECT p.Nombre as NombreProductor, ProductorID, a.Nombre as NombreActor, a.ActorID FROM Productores AS p INNER JOIN Actores AS a ON p.ActorID = a.ActorID WHERE p.Nombre = 'BK'
		COMMIT
	END TRY
	BEGIN CATCH
			ROLLBACK
	END CATCH	
END
RETURN 0
GO