
CREATE PROCEDURE [dnt_gettopiccountbytype]
@condition varchar(4000)
AS
DECLARE @sql varchar(4100)
set @sql ='SELECT COUNT(tid) FROM [dnt_topics] WITH (NOLOCK)WHERE [displayorder]>-1 AND [closed]<=1 '+@condition
exec(@sql)