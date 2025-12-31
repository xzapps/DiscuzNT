
CREATE PROCEDURE [dnt_gettaginfo]
@tagid int
AS
SELECT 
[tagid],
[tagname],
[userid],
[postdatetime],
[orderid],
[color],
[count],
[fcount],
[pcount],
[scount],
[vcount],
[gcount] 
FROM [dnt_tags] 
WHERE [tagid]=@tagid