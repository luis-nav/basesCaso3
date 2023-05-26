-- Hace un select de todos los nombres de los sp y los manda a recompilar 
-- la proxima vez que sean ejecutados.
-- Falta el USING DB

DECLARE @spName as VARCHAR(75);

DECLARE Recompiler_Cursor CURSOR FOR  
SELECT O.name FROM sys.objects O WHERE O.type LIKE 'P'; 
OPEN Recompiler_Cursor;  
FETCH NEXT FROM Recompiler_Cursor INTO @spName;  
WHILE @@FETCH_STATUS = 0  
	BEGIN
		EXEC sp_recompile @spName;
		FETCH NEXT FROM Recompiler_Cursor INTO @spName;  
	END;  
CLOSE Recompiler_Cursor;  
DEALLOCATE Recompiler_Cursor;  
GO  