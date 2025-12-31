
CREATE PROCEDURE [dnt_gettopiclistbycondition]
@fid int,
@pagesize int,
@pageindex int,
@startnum int,
@condition varchar(80)
AS
DECLARE @strSQL varchar(5000)

IF @pageindex = 1
	BEGIN
		SET @strSQL = 'SELECT TOP ' + STR(@pagesize) +' [rate],[tid],[iconid],[typeid],[title],[price],[hide],[readperm],

[special],[poster],[posterid],[replies],[views],[postdatetime],[lastpost],[lastposter],

[lastpostid],[lastposterid],[replies],[highlight],[digest],[displayorder],[attachment],[closed],[magic],[special] FROM 

[dnt_topics] WHERE [fid]=' +STR(@fid) + ' AND [displayorder]=0' + @condition + ' ORDER BY [lastpostid] DESC'
	END
ELSE
	BEGIN
		SET @strSQL = 'SELECT TOP ' + STR(@pagesize) +'[rate], [tid],[iconid],[typeid],[title],[price],[hide],[readperm],

[special],[poster],[posterid],[replies],[views],[postdatetime],[lastpost],[lastposter],

[lastpostid],[lastposterid],[replies],[highlight],[digest],[displayorder],[attachment],[closed],[magic],[special] FROM 

[dnt_topics] WHERE [lastpostid] < (SELECT min([lastpostid])  FROM (SELECT TOP ' + STR

((@pageindex-1)*@pagesize-@startnum) + ' [lastpostid] FROM [dnt_topics] WHERE [fid]=' +STR

(@fid) + ' AND [displayorder]=0' + @condition + ' ORDER BY [lastpostid] DESC) AS tblTmp ) 

AND [fid]=' +STR(@fid) + ' AND [displayorder]=0' + @condition + ' ORDER BY [lastpostid] DESC'
	END
EXEC(@strSQL)