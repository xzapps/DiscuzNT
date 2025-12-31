
CREATE PROCEDURE [dnt_gettopictags]
@topicid int
AS

SELECT 
t.[color],
t.[count],
t.[fcount],
t.[gcount],
t.[orderid],
t.[pcount],
t.[postdatetime],
t.[scount],
t.[tagid],
t.[tagname],
t.[userid],
t.[vcount]
FROM [dnt_tags] t, [dnt_topictags] tt 
WHERE tt.[tagid] = t.[tagid] AND tt.[tid] = @topicid 
ORDER BY [orderid]