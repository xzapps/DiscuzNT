
CREATE PROCEDURE [dnt_getattachpaymentlogbyaid]
@aid int
AS
SELECT 
[id],
[uid],
[username],
[aid],
[authorid],
[postdatetime],
[amount],
[netamount]
FROM [dnt_attachpaymentlog]
WHERE [aid] = @aid