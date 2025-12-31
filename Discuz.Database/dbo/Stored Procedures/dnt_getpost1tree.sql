
CREATE PROCEDURE dnt_getpost1tree
@tid int
AS
SELECT [pid], [layer], [title], [poster], [posterid],[postdatetime],[message] FROM [dnt_posts1] WHERE [tid] = @tid AND [invisible]=0 ORDER BY [parentid];