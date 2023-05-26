-- Usando DAC
-- Antes se utilizaba un xor en el proc
-- Ahora se utiliza el RC4 stream cipher
-- Ver mas en: https://sqlperformance.com/2016/05/sql-performance/the-internals-of-with-encryption
-- falla al usar dbo.fnEncDecRc4


DECLARE
    -- Note: OBJECT_ID only works for schema-scoped objects
    @objectid integer = OBJECT_ID(N'dbo.SP_VerTipoRecipientesLogs', N'FN'),
    @family_guid binary(16),
    @objid binary(4),
    @subobjid binary(2),
    @imageval varbinary(MAX),
    @RC4key binary(20);
 
-- Find the database family GUID
SELECT @family_guid = CONVERT(binary(16), DRS.family_guid)
FROM sys.database_recovery_status AS DRS
WHERE DRS.database_id = DB_ID();
 
-- Convert object ID to little-endian binary(4)
SET @objid = CONVERT(binary(4), REVERSE(CONVERT(binary(4), @objectid)));
 
SELECT
    -- Read the encrypted value
    @imageval = SOV.imageval,
    -- Get the subobjid and convert to little-endian binary
    @subobjid = CONVERT(binary(2), REVERSE(CONVERT(binary(2), SOV.subobjid)))
FROM sys.sysobjvalues AS SOV
WHERE 
    SOV.[objid] = @objectid
    AND SOV.valclass = 1;
 
-- Compute the RC4 initialization key
SET @RC4key = HASHBYTES('SHA1', @family_guid + @objid + @subobjid);
 
-- Apply the standard RC4 algorithm and
-- convert the result back to nvarchar
PRINT CONVERT
    (
        nvarchar(MAX),
        dbo.fnEncDecRc4
        (
            @RC4key,
            @imageval
        )
    );