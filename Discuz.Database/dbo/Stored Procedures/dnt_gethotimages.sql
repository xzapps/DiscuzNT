
CREATE PROCEDURE [dnt_gethotimages]
@fidlist VARCHAR(4000),
@count INT,
@orderby VARCHAR(50),
@continuous INT
AS

IF @continuous = 1
	BEGIN
		IF @fidlist <> ''
			SET @fidlist = 'AND [fid] IN('+@fidlist+') '
		EXEC('SELECT TOP '+ @count +' [attach].[aid],[attach].[tid],[attach].[filename],[attach].[attachment],[topic].[title] FROM [dnt_attachments] AS [attach] LEFT JOIN [dnt_topics] AS [topic] ON [attach].[tid] = [topic].[tid] AND [topic].[displayorder]>=0 WHERE
aid = (SELECT MIN(aid) from [dnt_attachments] where [width] > 360 AND [height] > 240 and [tid]=[topic].[tid]) '+ @fidlist +' ORDER BY [attach].['+ @orderby +'] DESC')
	END
ELSE
	BEGIN
		IF @fidlist <> ''
			SET @fidlist = 'AND [topic].[fid] IN('+@fidlist+') '
		EXEC('SELECT TOP '+ @count +' [attach].[tid],[attach].[filename],[attach].[attachment],[topic].[title] FROM [dnt_attachments] AS [attach] LEFT JOIN [dnt_topics] AS [topic] ON [attach].[tid] = [topic].[tid] AND [topic].[displayorder]>=0  WHERE [attach].[width] > 360  AND [height] > 240 '+ @fidlist+' ORDER BY ['+ @orderby +'] DESC')
	END