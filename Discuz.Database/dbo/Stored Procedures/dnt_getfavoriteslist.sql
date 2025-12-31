
CREATE PROCEDURE [dnt_getfavoriteslist]
@uid int,
@pagesize int,
@pageindex int
AS

IF @pageindex = 1
	BEGIN
		SELECT TOP(@pagesize) [uid],[tid],[fid],[title],[poster],[favtime],[replies],[views],[posterid],(CASE WHEN [viewtime]<[lastpost] THEN 1 ELSE 0 END) AS [new]
		FROM (SELECT [f].[uid],[f].[tid],[f].[favtime],[f].[viewtime],[topics].[title],[topics].[poster],[topics].[replies],[topics].[views],[topics].[posterid],[topics].[lastpost],[topics].[fid] FROM [dnt_favorites] [f] LEFT JOIN [dnt_topics] [topics]  ON   [f].[tid]=[topics].[tid] WHERE  [f].[typeid]=0 AND [f].[uid]=@uid) favorites ORDER BY [tid] DESC
	END
ELSE
	BEGIN
		SELECT TOP(@pagesize) [uid],[tid],[fid],[title],[poster],[favtime],[replies],[views],[posterid],(CASE WHEN [viewtime]<[lastpost] THEN 1 ELSE 0 END) AS [new]
	    FROM (SELECT [f].[uid],[f].[tid],[f].[favtime],[f].[viewtime],[topics].[title],[topics].[poster],[topics].[lastpost],[topics].[replies],[topics].[views],[topics].[posterid],[topics].[fid] FROM [dnt_favorites] [f] LEFT JOIN [dnt_topics] [topics]  ON   [f].[tid]=[topics].[tid] WHERE  [f].[typeid]=0 AND [f].[uid]=@uid) f1 WHERE [tid] < (SELECT MIN([tid]) FROM (SELECT TOP((@pageindex-1)*@pagesize) [tid] 
	    FROM (SELECT [f].[uid],[f].[tid],[f].[favtime],[f].[viewtime],[topics].[title],[topics].[poster],[topics].[lastpost],[topics].[replies],[topics].[views],[topics].[posterid],[topics].[fid] FROM [dnt_favorites] [f] LEFT JOIN [dnt_topics] [topics]  ON   [f].[tid]=[topics].[tid] WHERE  [f].[typeid]=0 AND [f].[uid]=@uid) f2 ORDER BY [tid] DESC) AS tblTmp)  ORDER BY [tid] DESC
	END