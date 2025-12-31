
CREATE PROCEDURE [dnt_gettopiclistbydate]
@fid int,
@pagesize int,
@pageindex int,
@startnum int,
@condition varchar(100),
@orderby varchar(100),
@ascdesc int
AS

DECLARE @strsql varchar(5000)
DECLARE @sorttype varchar(5)

IF @ascdesc=0
   SET @sorttype='ASC'
ELSE
   SET @sorttype='DESC'

IF @pageindex = 1
	BEGIN
		SET @strsql = 'SELECT TOP ' + STR(@pagesize) +' [tid],[iconid],[title],[price],[typeid],[readperm],[hide],[special],[poster],[posterid],[replies],[views],[postdatetime],[lastpost],[lastposter],[lastpostid],[lastposterid],[highlight],[digest],[displayorder],[attachment],[closed],[magic],[rate] FROM [dnt_topics] WHERE [fid]=' +STR(@fid) + ' AND [displayorder]=0'+@condition+' ORDER BY '+@orderby+' '+@sorttype
	END
ELSE
           IF @sorttype='DESC'
	BEGIN
		SET @strSQL = 'SELECT TOP ' + STR(@pagesize) +' [tid],[iconid],[title],[price],[typeid],[hide],[readperm],[special],[poster],[posterid],[replies],[views],[postdatetime],[lastpost],[lastposter],[lastpostid],[lastposterid],[highlight],[digest],[displayorder],[attachment],[closed],[magic],[rate] FROM [dnt_topics] WHERE ['+@orderby+'] < (SELECT min(['+@orderby+']) FROM (SELECT TOP ' + STR((@pageindex-1)*@pagesize-@startnum) + ' ['+@orderby+']  FROM [dnt_topics] WHERE [fid]=' +STR(@fid) + ' AND [displayorder]=0'+@condition+' ORDER BY  '+@orderby+' '+@sorttype+')AS tblTmp ) AND [fid]=' +STR(@fid) + ' AND [displayorder]=0'+@condition+' ORDER BY  '+@orderby+' '+@sorttype
	END
      ELSE
             BEGIN
		SET @strSQL = 'SELECT TOP ' + STR(@pagesize) +' [tid],[iconid],[title],[price],[hide],[typeid],[readperm],[special],[poster],[posterid],[replies],[views],[postdatetime],[lastpost],[lastposter],[lastpostid],[lastposterid],[highlight],[digest],[displayorder],[attachment],[closed],[magic],[rate] FROM [dnt_topics] WHERE ['+@orderby+'] > (SELECT MAX(['+@orderby+']) FROM (SELECT TOP ' + STR((@pageindex-1)*@pagesize-@startnum) + ' ['+@orderby+'] FROM [dnt_topics] WHERE [fid]=' +STR(@fid) + ' AND [displayorder]=0'+@condition+' ORDER BY  '+@orderby+' '+@sorttype+')AS tblTmp ) AND [fid]=' +STR(@fid) + ' AND [displayorder]=0'+@condition+' ORDER BY '+@orderby+' '+@sorttype
            END
EXEC(@strsql)