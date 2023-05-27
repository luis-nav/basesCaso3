CREATE PROCEDURE SP_AgregarResiduo
	@Nombre varchar(30),
	@Tipo varchar(30),
	@Unidad varchar(30)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @TipoTempID int
	DECLARE @UnidadTempID int

	SELECT @TipoTempID = TipoResiduoID FROM TiposResiduos WHERE @Tipo = Tipo
	SELECT @UnidadTempID = UnidadDeMedidaID FROM UnidadesDeMedidas WHERE @Unidad = Unidad

	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	BEGIN TRANSACTION
	
	BEGIN TRY
		INSERT INTO Residuos VALUES(@Nombre, @TipoTempID, @UnidadTempID)
		COMMIT
	END TRY
	BEGIN CATCH
			ROLLBACK
	END CATCH
END
RETURN 0
GO

EXEC SP_AgregarResiduo 'Gasolina', 'Liquido', 'L'