DECLARE @cantidadInicio as bigint;
DECLARE @cantidadFinal as bigint;

SET @cantidadInicio = (SELECT COUNT(EventLogID) FROM [TODDW10\EVLINKEDSERVER].EVSystemLogs.dbo.EventsLogs);

INSERT INTO [TODDW10\EVLINKEDSERVER].EVSystemLogs.dbo.EventsLogs
(PostTime, IPAddress, Username, Checksum, Descripcion, ReferenceID1, ReferenceID2 , Value1, Value2, LevelID, SourceID, TipoEventoID, TipoObjetoID)
SELECT PostTime, IPAddress, Username, Checksum, Descripcion, ReferenceID1, ReferenceID2 , Value1, Value2, LevelID, SourceID, TipoEventoID, TipoObjetoID FROM EventsLogs;

SET @cantidadFinal  = (SELECT COUNT(EventLogID) FROM [TODDW10\EVLINKEDSERVER].EVSystemLogs.dbo.EventsLogs);

IF @cantidadInicio != @cantidadFinal
	DELETE FROM EventsLogs WHERE EventLogID != 0;

/*
Inserts Para Pruebas
INSERT INTO EventsLogs (PostTime, IPAddress, Username, Checksum, Descripcion, ReferenceID1, Value1) 
VALUES (SYSDATETIME(), '1111111', 'Luis', CHECKSUM(SYSDATETIME(), '1111111', 'Luis', '', 100, '400'), '', 100, '400');
*/