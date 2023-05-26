-- Usando DAC
-- Antes se utilizaba un xor en el proc
-- Ahora se utiliza el RC4 stream cipher
-- Ver mas en:
-- (antiguo): https://sqlity.net/en/1617/decrypting-encrypted-database-objects/
-- (nuevo): https://sqlperformance.com/2016/05/sql-performance/the-internals-of-with-encryption

CREATE PROCEDURE [dbo].[ObjectEncryptionCracker]
@object_name NVARCHAR(MAX)
WITH ENCRYPTION
AS
BEGIN
DECLARE @secret VARBINARY(MAX);
DECLARE @known_encrypted VARBINARY(MAX);
DECLARE @known_plain VARBINARY(MAX);
DECLARE @object_type NVARCHAR(MAX);

SELECT @secret = imageval
FROM sys.sysobjvalues
WHERE objid = OBJECT_ID(@object_name);

DECLARE @cmd NVARCHAR(MAX);
SELECT @cmd = CASE type_desc
WHEN 'SQL_SCALAR_FUNCTION'
THEN 'ALTER FUNCTION ' + @object_name + '()RETURNS INT WITH ENCRYPTION AS BEGIN RETURN 0;END;'
WHEN 'SQL_TABLE_VALUED_FUNCTION'
THEN 'ALTER FUNCTION ' + @object_name + '()RETURNS @r TABLE(i INT) WITH ENCRYPTION AS BEGIN RETURN END;'
WHEN 'SQL_INLINE_TABLE_VALUED_FUNCTION'
THEN 'ALTER FUNCTION ' + @object_name + '()RETURNS TABLE WITH ENCRYPTION AS RETURN SELECT 0 i;'
WHEN 'SQL_STORED_PROCEDURE'
THEN 'ALTER PROCEDURE ' + @object_name + ' WITH ENCRYPTION AS RETURN 0;'
END
FROM sys.objects
WHERE object_id = OBJECT_ID(@object_name);

SELECT @cmd = REPLICATE(CAST(CHAR(32) AS NVARCHAR(MAX)), DATALENGTH(@secret)) + @cmd;

SELECT @known_plain = CAST(@cmd AS VARBINARY(MAX));

BEGIN TRAN;
EXEC(@cmd);
SELECT @known_encrypted = imageval
FROM sys.sysobjvalues
WHERE objid = OBJECT_ID(@object_name);
ROLLBACK;

DECLARE @i INT = 0;
DECLARE @plain VARBINARY(MAX) = 0x;

WHILE @i < DATALENGTH(@secret)
BEGIN
SET @plain = @plain
+ CAST(REVERSE(CAST(CAST(SUBSTRING(@secret, @i, 2) AS SMALLINT)
^ CAST(SUBSTRING(@known_plain, @i, 2) AS SMALLINT)
^ CAST(SUBSTRING(@known_encrypted, @i, 2) AS SMALLINT) AS BINARY(2))) AS BINARY(2));
SET @i += 2;
END

SET @cmd = N'SELECT (SELECT ''--''+CHAR(13)+CHAR(10)+''GO''+CHAR(13)+CHAR(10)+'
+ N'CAST(@plain AS NVARCHAR(MAX))+CHAR(13)+CHAR(10)+''GO''+CHAR(13)+CHAR(10)+''--'''
+ N' AS [processing-instruction(sql)] FOR XML PATH(''''),TYPE) AS [object_definition for '
+ REPLACE(@object_name, ']', ']]') + ']';
EXEC sp_executesql @cmd, N'@plain VARBINARY(MAX)', @plain;
END;

EXEC [dbo].[ObjectEncryptionCracker] '[dbo].[SP_VerTipoRecipientesLogs]';