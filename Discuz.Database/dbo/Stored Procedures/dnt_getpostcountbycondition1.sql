
CREATE PROCEDURE [dnt_getpostcountbycondition1]
@tid int,
@posterid int
AS
SELECT COUNT(pid) FROM [dnt_posts1] WHERE [tid] = @tid AND [posterid] = @posterid  AND [layer]>=0