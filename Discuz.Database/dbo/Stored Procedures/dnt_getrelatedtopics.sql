
CREATE PROCEDURE [dnt_getrelatedtopics]
@count int,
@tid int
AS

SELECT TOP(@count) 
[dnt_topictagcaches].[linktid],
[dnt_topictagcaches].[linktitle],
[dnt_topictagcaches].[tid]
FROM [dnt_topictagcaches] WHERE [tid]=@tid ORDER BY [linktid] DESC