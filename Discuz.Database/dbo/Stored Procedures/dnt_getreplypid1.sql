
CREATE PROCEDURE [dnt_getreplypid1]
@uid int,
@tid int

AS
SELECT TOP 1 [pid] FROM [dnt_posts1] WHERE [tid] =@tid AND [posterid]=@uid