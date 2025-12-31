
CREATE PROCEDURE [dnt_getmodpostcountbypidlist]
@fidlist NVARCHAR(500),
@posttableid NVARCHAR(5),
@pidlist NVARCHAR(500)
AS
BEGIN	
	DECLARE @sql NVARCHAR(500)
	SET @sql = 'SELECT COUNT([pid]) FROM [dnt_posts'+@posttableid+'] where [pid] IN ('+@pidlist+') AND [fid] IN ('+@fidlist+')'
	EXEC(@sql)
END