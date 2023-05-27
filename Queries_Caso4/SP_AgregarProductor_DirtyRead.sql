-- Correr primero
CREATE PROCEDURE [dbo].[SP_AgregarProductor]
    @NombreProductor nchar(50),
	@NombreActor nchar(35)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @LastID INT
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED -- COMMITTED
	BEGIN TRANSACTION
	
	BEGIN TRY
		INSERT INTO Actores VALUES (@NombreActor)
		SET @LastID = @@IDENTITY
		INSERT INTO Productores VALUES (@LastID, @NombreProductor)
		COMMIT
	END TRY
	BEGIN CATCH
			WAITFOR DELAY '00:00:05'
			ROLLBACK
	END CATCH
END
RETURN 0
GO

USE esencialVerde
EXEC SP_AgregarProductor null, 'Eugenio'