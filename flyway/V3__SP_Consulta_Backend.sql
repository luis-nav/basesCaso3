CREATE PROCEDURE [dbo].[SP_VerTipoRecipientesLogs]
    @Accion varchar(30)
AS
    SET NOCOUNT ON;
    DECLARE @AccionID INT;

    SET @AccionID = (SELECT AccionRecipienteID FROM AccionesRecipientes WHERE Descripcion = @Accion)

    IF @AccionID IS NULL BEGIN
		RETURN 1
	END

    SELECT RL.Hora, RL.TipoRecipienteID, RL.LocalID, AR.Descripcion, ResiduoID
    FROM RecipientesLogs RL
    INNER JOIN AccionesRecipientes AR on RL.AccionRecipienteID = AR.AccionRecipienteID
    WHERE AR.AccionRecipienteID = @AccionID;
    RETURN
GO