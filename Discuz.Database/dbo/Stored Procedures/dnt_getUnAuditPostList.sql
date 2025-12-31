
CREATE PROCEDURE [dnt_getUnAuditPostList]
@fidlist		VARCHAR(255),
@tableid		INT,
@filter			INT,
@pagesize		INT,
@pageindex		INT
AS
DECLARE @pagetop INT
SET @pagetop = (@pageindex-1)*@pagesize

IF @pageindex = 1
BEGIN
	IF @fidlist = '0'
		EXEC('SELECT TOP ' + @pagesize + '
										[pid],
										[tid],
										[fid], 
										[parentid],
										[title], 
										[layer],
										[message], 
										[ip], 
										[lastedit], 
										[postdatetime], 
										[attachment], 
										[poster], 
										[posterid], 
										[invisible], 
										[usesig], 
										[htmlon], 
										[smileyoff], 
										[parseurloff], 
										[bbcodeoff], 
										[rate], 
										[ratetimes] 									
		 FROM [dnt_posts'+@tableid+'] WHERE [invisible]='+@filter+' AND [layer]>0 ORDER BY [pid] DESC')
	ELSE
		EXEC('SELECT TOP ' + @pagesize + '
										[pid], 
										[tid],
										[fid],
										[parentid], 
										[title], 
										[layer],
										[message], 
										[ip], 
										[lastedit], 
										[postdatetime], 
										[attachment], 
										[poster], 
										[posterid], 
										[invisible], 
										[usesig], 
										[htmlon], 
										[smileyoff], 
										[parseurloff], 
										[bbcodeoff], 
										[rate], 
										[ratetimes] 									
		 FROM [dnt_posts'+@tableid+'] WHERE [fid] IN ('+@fidlist+') AND [invisible]='+@filter+' AND [layer]>0 ORDER BY [pid] DESC')
END
ELSE
BEGIN
	IF @fidlist = '0'
		EXEC('SELECT TOP ' + @pagesize + ' 
										[pid],
										[tid], 
										[fid],
										[parentid], 
										[title], 
										[layer],
										[message], 
										[ip], 
										[lastedit], 
										[postdatetime], 
										[attachment], 
										[poster], 
										[posterid], 
										[invisible], 
										[usesig], 
										[htmlon], 
										[smileyoff], 
										[parseurloff], 
										[bbcodeoff], 
										[rate], 
										[ratetimes]
		FROM [dnt_posts'+@tableid+'] WHERE [pid] < (SELECT MIN([pid])  FROM (SELECT TOP '+@pagetop+' [pid] FROM [dnt_posts'+@tableid+'] WHERE [invisible]='+@filter+' AND [layer]>0 ORDER BY [pid] DESC) AS T) AND [invisible]=1 AND [layer]>0 ORDER BY [pid] DESC')
	ELSE
		EXEC('SELECT TOP ' + @pagesize + ' 
										[pid],
										[tid], 
										[fid],
										[parentid], 
										[title], 
										[layer],
										[message], 
										[ip], 
										[lastedit], 
										[postdatetime], 
										[attachment], 
										[poster], 
										[posterid], 
										[invisible], 
										[usesig], 
										[htmlon], 
										[smileyoff], 
										[parseurloff], 
										[bbcodeoff], 
										[rate], 
										[ratetimes]
		FROM [dnt_posts'+@tableid+'] WHERE [pid] < (SELECT MIN([pid])  FROM (SELECT TOP '+@pagetop+' [pid] FROM [dnt_posts'+@tableid+'] WHERE [fid] IN ('+@fidlist+') AND [invisible]='+@filter+' AND [layer]>0 ORDER BY [pid] DESC) AS T) AND [fid] IN ('+@fidlist+') AND [invisible]=1 AND [layer]>0 ORDER BY [pid] DESC')
END