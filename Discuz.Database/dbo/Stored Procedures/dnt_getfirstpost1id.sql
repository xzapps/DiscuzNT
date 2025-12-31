
CREATE PROCEDURE dnt_getfirstpost1id
@tid int
AS
SELECT TOP 1 [pid] FROM [dnt_posts1] WHERE [tid]=@tid ORDER BY [pid]