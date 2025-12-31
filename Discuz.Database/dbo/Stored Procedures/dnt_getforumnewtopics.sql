
CREATE PROCEDURE dnt_getforumnewtopics
@fid int
AS
DECLARE @strSQL VARCHAR(5000)
DECLARE @strMaxPostTableId VARCHAR(3)
SELECT @strMaxPostTableId=max([id]) FROM [dnt_tablelist]
					
SET @strSQL = 'SELECT TOP 20 [dnt_topics].[tid],[dnt_topics].[title],[dnt_topics].[poster],[dnt_topics].[postdatetime],[dnt_posts'+@strMaxPostTableId+'].[message] FROM [dnt_topics] LEFT JOIN [dnt_posts'+@strMaxPostTableId+'] ON [dnt_topics].[tid]=[dnt_posts'+@strMaxPostTableId+'].[tid]  WHERE [dnt_posts'+@strMaxPostTableId+'].[layer]=0 AND  [dnt_topics].[fid]='+LTRIM(STR(@fid))+' ORDER BY [lastpost] DESC'
EXEC(@strSQL)