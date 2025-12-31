
CREATE PROC [dnt_getlastposttid]
@visibleforums VARCHAR(4000),
@fid INT
AS
IF @visibleforums=''
SELECT TOP 1 [tid] FROM [dnt_topics] AS t LEFT JOIN [dnt_forums] AS f  ON [t].[fid] = [f].[fid] 
WHERE [t].[closed]<>1 AND  [t].[displayorder] >=0  AND ([t].[fid] = @fid 
OR CHARINDEX(',' + CONVERT(NVARCHAR(10), @fid) + ',' , ',' + RTRIM([f].[parentidlist]) + ',') > 0 )  
ORDER BY [t].[lastpost] DESC
ELSE
EXEC('SELECT TOP 1 [tid] FROM [dnt_topics] AS t LEFT JOIN [dnt_forums] AS f  ON [t].[fid] = [f].[fid] 
WHERE [t].[closed]<>1 AND  [t].[displayorder] >=0  AND ([t].[fid] = ' + @fid +
'OR CHARINDEX('','' + CONVERT(NVARCHAR(10), ' + @fid + ') + '','' , '','' + RTRIM([f].[parentidlist]) + '','') > 0 )  
AND [t].[fid] IN ('+@visibleforums+')  ORDER BY [t].[lastpost] DESC')