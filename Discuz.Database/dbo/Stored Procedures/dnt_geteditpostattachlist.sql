
CREATE PROCEDURE [dnt_geteditpostattachlist]
@uid INT,
@aidlist VARCHAR(2000)
AS
BEGIN
IF @uid=0
SELECT [aid], [uid], [tid], [pid], [postdatetime], [readperm], [filename], [description], [filetype], [filesize], [attachment], [downloads], [width], [height], [attachprice],[isimage]
FROM [dnt_attachments] WITH (NOLOCK) WHERE aid in (SELECT [item] FROM [dnt_split](@aidlist, ','))
ELSE
SELECT [aid], [uid], [tid], [pid], [postdatetime], [readperm], [filename], [description], [filetype], [filesize], [attachment], [downloads], [width], [height], [attachprice],[isimage]
FROM [dnt_attachments] WITH (NOLOCK) WHERE aid in (SELECT [item] FROM [dnt_split](@aidlist, ',')) and UID=@uid
END