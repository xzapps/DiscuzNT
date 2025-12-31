
CREATE PROCEDURE [dnt_createtopic]
@fid smallint,
@iconid smallint,
@title nchar(80),
@typeid smallint,
@readperm int,
@price smallint,
@poster char(20),
@posterid int,
@postdatetime datetime,
@lastpost smalldatetime,
@lastpostid int,
@lastposter char(20),
@views int,
@replies int,
@displayorder int,
@highlight varchar(500),
@digest int,
@rate int,
@hide int,
@attachment int,
@moderated int,
@closed int,
@magic int,
@special tinyint,
@attention int
AS

DECLARE @topicid int

DELETE FROM [dnt_topics] WHERE [tid]>(SELECT ISNULL(max(tid),0)-100 FROM [dnt_topics]) AND [lastpostid]=0

INSERT INTO [dnt_topics]([fid], [iconid], [title], [typeid], [readperm], [price], [poster], [posterid], [postdatetime], [lastpost], [lastpostid], [lastposter], [views], [replies], [displayorder], [highlight], [digest], [rate], [hide], [attachment], [moderated], [closed], [magic], [special],[attention]) VALUES(@fid, @iconid, @title, @typeid, @readperm, @price, @poster, @posterid, @postdatetime, @lastpost, @lastpostid, @lastposter, @views, @replies, @displayorder, @highlight, @digest, @rate, @hide, @attachment, @moderated, @closed, @magic, @special,@attention)

SET @topicid=SCOPE_IDENTITY()

IF @@ERROR=0 AND @displayorder=0
	BEGIN
		UPDATE [dnt_statistics] SET [totaltopic]=[totaltopic] + 1


		UPDATE [dnt_forums] SET [topics] = [topics] + 1,[curtopics] = [curtopics] + 1 WHERE [fid] = @fid
		
		IF @posterid <> -1
		BEGIN
			INSERT INTO [dnt_mytopics]([tid],[uid],[dateline]) VALUES(@topicid,  @posterid,  @postdatetime)
		END
		
	END
	
SELECT @topicid as topicid