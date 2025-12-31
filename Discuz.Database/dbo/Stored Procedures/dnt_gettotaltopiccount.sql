
CREATE PROC [dnt_gettotaltopiccount]
AS
SELECT COUNT([tid]) AS [topicscount] FROM [dnt_topics]