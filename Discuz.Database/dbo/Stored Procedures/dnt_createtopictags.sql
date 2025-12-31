
CREATE PROCEDURE [dnt_createtopictags]
@tags nvarchar(55),
@tid int,
@userid int,
@postdatetime datetime
AS
BEGIN
	EXEC [dnt_createtags] @tags, @userid, @postdatetime

	UPDATE [dnt_tags] SET [fcount]=[fcount]+1,[count]=[count]+1
	WHERE EXISTS (SELECT [item] FROM [dnt_split](@tags, ' ') AS [newtags] WHERE [newtags].[item] = [tagname])

	INSERT INTO [dnt_topictags] (tagid, tid)
	SELECT tagid, @tid FROM [dnt_tags] WHERE EXISTS (SELECT [item] FROM [dnt_split](@tags, ' ') WHERE [item] = [dnt_tags].[tagname])
END