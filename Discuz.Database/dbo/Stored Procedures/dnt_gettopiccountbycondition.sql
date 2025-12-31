
CREATE PROCEDURE [dnt_gettopiccountbycondition]
@fid int,
@state int=0,
@condition varchar(80)=null
AS
DECLARE @sql varchar(500)
IF @state=-1
	BEGIN
		set @sql ='SELECT COUNT(tid) FROM [dnt_topics] WHERE [fid]='+str(@fid)+' AND [displayorder]>-1 AND [closed]<=1'+@condition
	END
ELSE
	BEGIN
set @sql ='SELECT COUNT(tid) FROM [dnt_topics] WHERE [fid]='+str(@fid)+' AND [displayorder]>-1 AND [closed]='+str(@state)+' AND [closed]<=1'+@condition
	END
exec(@sql)