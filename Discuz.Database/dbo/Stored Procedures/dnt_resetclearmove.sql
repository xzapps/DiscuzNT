
CREATE PROC [dnt_resetclearmove]
AS
DELETE FROM [dnt_topics] WHERE [closed] > 1