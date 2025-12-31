
CREATE PROCEDURE [dnt_createsearchcache]
	@keywords varchar(255),
	@searchstring varchar(255),
	@ip varchar(15),
	@uid int,
	@groupid int,
	@postdatetime varchar(19),
	@expiration varchar(19),
	@topics int,
	@tids text
AS
INSERT INTO dnt_searchcaches 
	([keywords],[searchstring],[ip],[uid],[groupid],[postdatetime],[expiration],[topics],[tids])
VALUES
	(@keywords,@searchstring,@ip,@uid,@groupid,@postdatetime,@expiration,@topics,@tids)
SELECT SCOPE_IDENTITY()  AS 'searchid'