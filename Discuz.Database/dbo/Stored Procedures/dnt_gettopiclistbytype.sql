
CREATE PROCEDURE [dnt_gettopiclistbytype]
@pagesize int,
@pageindex int,
@startnum int,
@condition varchar(1000),
@ascdesc int
AS
DECLARE @strSQL varchar(5000)

DECLARE @sorttype varchar(5)

IF @ascdesc=0
   SET @sorttype='ASC'
ELSE
   SET @sorttype='DESC'

IF @pageindex = 1
	BEGIN
		SET @strSQL = 'SELECT TOP ' + STR(@pagesize) +' [tid],[iconid],[typeid],[title],[price],[hide],[readperm],

[special],[poster],[posterid],[replies],[views],[postdatetime],[lastpost],[lastposter],

[lastpostid],[lastposterid],[replies],[highlight],[digest],[displayorder],[attachment],[closed],[magic],[rate] FROM 

[dnt_topics] WITH (NOLOCK) WHERE  [displayorder]>=0' + @condition + ' ORDER BY [lastpostid] '+@sorttype +',  [tid] '+@sorttype
	END
ELSE
	BEGIN
		IF @sorttype='DESC'
		BEGIN
			SET @strSQL = 'SELECT TOP ' + STR(@pagesize) +' [tid],[iconid],[typeid],[title],[price],[hide],[readperm],
	
	[special],[poster],[posterid],[replies],[views],[postdatetime],[lastpost],[lastposter],
	
	[lastpostid],[lastposterid],[replies],[highlight],[digest],[displayorder],[attachment],[closed],[magic],[rate] FROM 
	
	[dnt_topics] WITH (NOLOCK) WHERE [lastpostid] < (SELECT min([lastpostid])  FROM (SELECT TOP ' + STR
	
	((@pageindex-1)*@pagesize-@startnum) + ' [lastpostid] FROM [dnt_topics] WHERE  [displayorder]>=0' + @condition + ' ORDER BY [lastpostid] ' + @sorttype + ', [tid] ' + @sorttype + ') AS tblTmp ) 
	
	AND  [displayorder]>=0' + @condition +' ORDER BY [lastpostid] '+@sorttype +',  [tid] '+@sorttype
		END
		ELSE
		BEGIN
			SET @strSQL = 'SELECT TOP ' + STR(@pagesize) +' [tid],[iconid],[typeid],[title],[price],[hide],[readperm],
	
	[special],[poster],[posterid],[replies],[views],[postdatetime],[lastpost],[lastposter],
	
	[lastpostid],[lastposterid],[replies],[highlight],[digest],[displayorder],[attachment],[closed],[magic] FROM 
	
	[dnt_topics] WITH (NOLOCK) WHERE [lastpostid] > (SELECT MAX([lastpostid])  FROM (SELECT TOP ' + STR
	
	((@pageindex-1)*@pagesize-@startnum) + ' [lastpostid] FROM [dnt_topics] WHERE  [displayorder]>=0' + @condition + ' ORDER BY [lastpostid] ' + @sorttype + ' , [tid] ' + @sorttype + ') AS tblTmp ) 
	
	AND  [displayorder]>=0' + @condition +' ORDER BY [lastpostid] '+@sorttype +',  [tid] '+@sorttype
		END
	END
EXEC(@strSQL)