
CREATE PROC [dnt_gettopictids]
@statcount INT,
@lasttid INT
AS
SELECT TOP(@statcount) [tid] FROM [dnt_topics] WHERE [tid] > @lasttid ORDER BY [tid]