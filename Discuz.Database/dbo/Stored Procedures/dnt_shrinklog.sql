
CREATE PROCEDURE [dnt_shrinklog]  
@DBName  nchar(50) 
AS
Begin
	exec('BACKUP LOG ['+@DBName+']  WITH NO_LOG')
	exec('DBCC  SHRINKDATABASE(['+@DBName+'])')
End