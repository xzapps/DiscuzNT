
CREATE PROC [dnt_updatemypost]
@tablename VARCHAR(50)
AS
DELETE FROM [dnt_myposts]
EXEC ('
		INSERT INTO [dnt_myposts]([uid], [tid], [pid], [dateline])
		SELECT [posterid],[tid],[pid],[postdatetime] FROM [' + @tablename + '] WHERE [posterid]<>-1
	')