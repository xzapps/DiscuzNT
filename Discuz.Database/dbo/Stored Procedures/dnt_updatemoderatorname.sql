
CREATE PROC [dnt_updatemoderatorname]
@oldname NVARCHAR(20),
@newname VARCHAR(20)
AS
IF @newname <> ''
	UPDATE dnt_forumfields 
	SET MODERATORS=REPLACE(LTRIM(RTRIM(REPLACE(' '+REPLACE(CONVERT(NVARCHAR(500),MODERATORS),',',' ')+' ',' '+@oldname+' ',' '+@newname+' '))),' ',',')
	WHERE CHARINDEX(','+@oldname+',',','+CONVERT(NVARCHAR(500),MODERATORS)+',') > 0
ELSE
	UPDATE dnt_forumfields 
	SET MODERATORS = REPLACE(LTRIM(RTRIM(REPLACE(REPLACE(','+CONVERT(NVARCHAR(500),MODERATORS)+',',','+@oldname+',',','),',',' '))),' ',',')
	WHERE CHARINDEX(','+@oldname+',',','+CONVERT(NVARCHAR(500),MODERATORS)+',') > 0