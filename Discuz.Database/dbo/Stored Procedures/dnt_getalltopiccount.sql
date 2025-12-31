
CREATE PROCEDURE [dnt_getalltopiccount]
@subfidList nchar(400)
AS

SELECT COUNT(tid) FROM [dnt_topics] WHERE [fid]  IN (SELECT [item] FROM [dnt_split](@subfidList, ','))  AND [displayorder]>=0