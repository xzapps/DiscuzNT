
CREATE PROCEDURE [dnt_setapplicationflag]
@appidlist nvarchar(1000),
@appnamelist nvarchar(2000),
@flag tinyint
AS
BEGIN
DECLARE @appid int
DECLARE @appname char(20)
DECLARE appidcursor cursor for (select * from [dnt_split](@appidlist,','))
DECLARE appnamecursor cursor for (select * from [dnt_split](@appnamelist,','))
OPEN appidcursor
OPEN appnamecursor
FETCH NEXT FROM appidcursor INTO @appid
FETCH NEXT FROM appnamecursor INTO @appname
WHILE(@@FETCH_STATUS=0)
	BEGIN
		DECLARE @count int
		SET @count=(SELECT COUNT(1) FROM [dnt_myapp] WHERE [appid]=@appid)
		IF(@count<=0)
			INSERT INTO[dnt_myapp]([appid],[appname],[displaymethod],[displayorder],[flag],[narrow],[version])
			VALUES(@appid,@appname,0,0,0,0,0)
		FETCH NEXT FROM appidcursor INTO @appid
		FETCH NEXT FROM appnamecursor INTO @appname
	END
CLOSE appidcursor
CLOSE appnamecursor
DEALLOCATE appidcursor
DEALLOCATE appnamecursor

UPDATE [dnt_myapp] SET [flag]=@flag WHERE [appid]IN(select * from [dnt_split](@appidlist,','))

END