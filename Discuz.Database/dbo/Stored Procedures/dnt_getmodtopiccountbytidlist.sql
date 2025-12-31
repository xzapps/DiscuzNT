
CREATE PROCEDURE [dnt_getmodtopiccountbytidlist]
@fidlist NCHAR(500),
@tidlist NCHAR(500)
AS
BEGIN	
	SELECT COUNT([tid]) FROM [dnt_topics] WHERE [tid] IN (SELECT [item] FROM dnt_split(@tidlist, ',')) AND [fid] IN (SELECT [item] FROM dnt_split(@fidlist, ','))
END