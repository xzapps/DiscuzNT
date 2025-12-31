
CREATE PROCEDURE [dnt_getnewtopics1]
	@fidlist VARCHAR(500)
	AS
	IF @fidlist <> ''
	BEGIN
	SELECT TOP(20) 
		[dnt_posts1].[tid], 
        [dnt_posts1].[title], 
        [dnt_posts1].[poster], 
        [dnt_posts1].[postdatetime], 
        [dnt_posts1].[message],
        [dnt_forums].[name] 
        FROM [dnt_posts1]  
        LEFT JOIN [dnt_forums] ON [dnt_posts1].[fid]=[dnt_forums].[fid]
        LEFT JOIN [dnt_topics] ON [dnt_posts1].[tid]=[dnt_topics].[tid]
        WHERE CHARINDEX(','+RTRIM([dnt_forums].[fid])+',', ','+@fidlist+',') > 0 
        AND [dnt_posts1].[layer]=0 AND [dnt_topics].[displayorder] >= 0
        ORDER BY [dnt_posts1].[tid] DESC
    END 
    ELSE
    BEGIN
	SELECT TOP(20) 
		[dnt_posts1].[tid], 
        [dnt_posts1].[title], 
        [dnt_posts1].[poster], 
        [dnt_posts1].[postdatetime], 
        [dnt_posts1].[message],
        [dnt_forums].[name] 
        FROM [dnt_posts1]
        LEFT JOIN [dnt_forums] ON [dnt_posts1].[fid]=[dnt_forums].[fid]
        LEFT JOIN [dnt_topics] ON [dnt_posts1].[tid]=[dnt_topics].[tid]
        WHERE [dnt_posts1].[layer]=0 AND [dnt_topics].[displayorder] >= 0
        ORDER BY [dnt_posts1].[tid] DESC
    END