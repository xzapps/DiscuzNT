
CREATE PROCEDURE [dnt_getsitemapnewtopics]
@fidlist VARCHAR(500)
AS
IF @fidlist<>''
     BEGIN
      DECLARE @strSQL VARCHAR(5000)
      SET @strSQL = 'SELECT TOP 20 [tid], [fid], [title], [poster], [postdatetime], [lastpost], [replies], [views], [digest] FROM [dnt_topics] WHERE [fid] 
NOT IN ('+@fidlist +') ORDER BY [tid] DESC' 
     END
ELSE
     BEGIN
      SET @strSQL = 'SELECT TOP 20 [tid], [fid], [title], [poster], [postdatetime], [lastpost], [replies], [views], [digest] FROM [dnt_topics] ORDER BY [tid] 
DESC'
     END
  EXEC(@strSQL)