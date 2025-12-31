
CREATE PROCEDURE [dnt_addparentforumtopics]
@topics int,
@fpidlist nvarchar(100)
AS
   UPDATE [dnt_forums] SET [topics] = [topics] + @topics WHERE [fid] IN (SELECT [item]FROM [dnt_split](@fpidlist, ',') )