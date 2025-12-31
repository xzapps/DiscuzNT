
CREATE PROCEDURE [dnt_updateapplication]
@appid int,
@appname char(20),
@version int,
@displaymethod tinyint,
@displayorder smallint
AS
BEGIN
DECLARE @count int
SET @count=(SELECT COUNT(1) FROM [dnt_myapp] WHERE [appid]=@appid)

IF(@count>0)
	UPDATE [dnt_myapp] SET [appname]=@appname,[displaymethod]=@displaymethod,[displayorder]=@displayorder,[version]=@version WHERE [appid]=@appid
ELSE
	INSERT INTO [dnt_myapp]([appid],[appname],[displaymethod],[displayorder],[version]) VALUES(@appid,@appname,@displaymethod,@displayorder,@version)
END