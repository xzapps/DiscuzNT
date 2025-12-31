
CREATE PROCEDURE [dnt_gethottopicslist]
@pagesize int,
@pageindex int, 
@fid int,
@showtype varchar(100) , 
@timebetween int
AS
DECLARE @strSQL varchar(4000)
DECLARE @strSQLByFid nvarchar(200)
DECLARE @strSQLByDate nvarchar(200)
DECLARE @pagetop int
SET @pagetop = (@pageindex-1)*@pagesize
SET @strSQLByFid = ''
SET @strSQLByDate = ''

IF @fid<>0
BEGIN
SET @strSQLByFid='AND t.[fid]='+STR(@fid)
END

IF @timebetween<>0
SET @strSQLByDate=' AND DATEDIFF(DAY,[postdatetime],GETDATE())<=' + STR(@timebetween)


IF @pageindex=1
BEGIN
SET @strSQL = 'SELECT TOP ' + STR(@pagesize) +'  [t].[tid],[t].[fid],[t].[iconid],[t].[typeid],
[t].[readperm],[t].[price],[t].[poster],[t].[posterid],[t].[title],
[t].[attention],[t].[postdatetime],[t].[lastpost],[t].[lastpostid],[t].[lastposter],[t].[lastposterid],
[t].[views],[t].[replies],[t].[displayorder],[t].[highlight],[t].[digest],[t].[rate],[t].[hide],
[t].[attachment],[t].[moderated],[t].[closed],[t].[magic],[t].[identify],[t].[special],
f.[name] FROM [dnt_topics] t LEFT JOIN [dnt_forums] f ON t.[fid] = f.[fid] 
WHERE 1=1 '+@strSQLByFid+@strSQLByDate+' ORDER BY ['+@showtype+'] DESC'
END

ELSE
BEGIN
SET @strSQL = 'SELECT TOP ' + STR(@pagesize) +' [t].[tid],[t].[fid],[t].[iconid],[t].[typeid],[t].[readperm],[t].[price],
[t].[poster],[t].[posterid],[t].[title],[t].[attention],[t].[postdatetime],[t].[lastpost],[t].[lastpostid],
[t].[lastposter],[t].[lastposterid],[t].[views],[t].[replies],[t].[displayorder],[t].[highlight],[t].[digest],
[t].[rate],[t].[hide],[t].[attachment],[t].[moderated],[t].[closed],[t].[magic],[t].[identify],[t].[special],
f.[name] FROM [dnt_topics] t LEFT JOIN [dnt_forums] f ON t.[fid] = f.[fid] 
WHERE 1=1 ' +@strSQLByFid +@strSQLByDate+' AND [tid] NOT IN (SELECT TOP '+ STR(@pagetop)+' [tid] FROM [dnt_topics] 
WHERE 1=1 ' +@strSQLByFid +@strSQLByDate+' ORDER BY ['+@showtype+'] DESC) ORDER BY ['+@showtype+'] DESC'
END
EXEC(@strSQL)