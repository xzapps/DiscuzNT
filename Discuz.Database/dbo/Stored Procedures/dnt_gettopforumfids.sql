
CREATE PROC [dnt_gettopforumfids]
@lastfid INT,
@statcount INT
AS
SELECT TOP(@statcount) [fid] FROM [dnt_forums] WHERE [fid] > @lastfid