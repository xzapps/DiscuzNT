
CREATE PROCEDURE [dnt_gethottopicscount]
@fid int,
@timebetween int
AS
DECLARE @strSQL varchar(4000)
DECLARE @strSQLByFid nvarchar(200)
DECLARE @strSQLByDate nvarchar(200)
DECLARE @pagetop int
IF @fid<>0
SET @strSQLByFid=' AND [fid]='+STR(@fid)+'' 

IF @timebetween<>0
SET @strSQLByDate=' AND DATEDIFF(DAY,[postdatetime],GETDATE())<=' + STR(@timebetween)

SET @strSQL = 'SELECT COUNT(1) FROM [dnt_topics] WHERE 1=1 '+@strSQLByFid+@strSQLByDate
EXEC(@strSQL)