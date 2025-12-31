
CREATE PROCEDURE [dnt_getpost1count]
@tid int
AS
SELECT COUNT(pid) FROM [dnt_posts1] WHERE [tid] = @tid AND [invisible]=0 AND layer>0