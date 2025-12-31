
CREATE PROCEDURE [dnt_deletetopicbytidlist1]
    @tidlist AS VARCHAR(2000),
    @chanageposts AS BIT
AS

    DECLARE @postcount int
    DECLARE @topiccount int
    DECLARE @todaycount int
    DECLARE @sqlstr nvarchar(4000)
    DECLARE @fid varchar(2000)
    DECLARE @posterid varchar(200)
    DECLARE @tempFid int
    DECLARE @tempPosterid int
    DECLARE @tempLayer int
    DECLARE @temppostdatetime datetime

    DECLARE @tempfidlist AS VARCHAR(1000)	

    SET @fid = ''
    SET @posterid = ''
    SET @postcount=0
    SET @topiccount=0
    SET @todaycount=0

    SET @tempfidlist = '';


    IF @tidlist<>''
        BEGIN
            EXEC('DECLARE cu_dnt_posts CURSOR FOR SELECT [fid],[posterid],[layer],[postdatetime] FROM [dnt_posts1] WHERE [dnt_posts1].[tid] IN ('+@tidlist+')')
			
            OPEN cu_dnt_posts
            FETCH NEXT FROM cu_dnt_posts into @tempFid,@tempPosterid,@tempLayer,@temppostdatetime
            WHILE @@FETCH_STATUS = 0
                BEGIN
                    SET @postcount = @postcount + 1
                    IF @tempLayer = 0
	                    BEGIN
		                    SET @topiccount = @topiccount + 1
							
	                    END

                    IF DATEDIFF(d,@temppostdatetime,GETDATE()) = 0
	                    BEGIN
		                    SET @todaycount = @todaycount + 1
	                    END


                    IF CHARINDEX(',' + LTRIM(STR(@tempFid)) + ',',@fid + ',') = 0
	                    BEGIN
		                    --SET @fid = @fid + ',' + LTRIM(STR(@tempFid))	
		                    SELECT @tempfidlist = ISNULL([parentidlist],'') FROM [dnt_forums] WHERE [fid] = @tempFid
		                    IF RTRIM(@tempfidlist)<>''
			                    BEGIN
				                    SET @fid = RTRIM(@fid) + ',' +  RTRIM(@tempfidlist) + ',' + CAST(@tempFid AS VARCHAR(10))
			                    END
		                    ELSE
			                    BEGIN
				                    SET @fid =RTRIM(@fid) + ',' +  CAST(@tempFid AS VARCHAR(10))
			                    END

					
	                    END
                    IF @chanageposts = 1
	                    BEGIN
		                    UPDATE [dnt_users] SET [posts] = [posts] - 1 WHERE [uid] = @tempPosterid
	                    END
				
                    FETCH NEXT FROM cu_dnt_posts into @tempFid,@tempPosterid,@tempLayer,@temppostdatetime
                END

            CLOSE cu_dnt_posts
            DEALLOCATE cu_dnt_posts

	
            IF LEN(@fid)>0
                BEGIN	

			
                    SET @fid = SUBSTRING(@fid,2,LEN(@fid)-1)
		
                    IF @chanageposts = 1
	                    BEGIN
		
		                    UPDATE [dnt_statistics] SET [totaltopic]=[totaltopic] - @topiccount, [totalpost]=[totalpost] - @postcount

		                    EXEC('UPDATE [dnt_forums] 
		                    SET [posts]=[posts] - ' + @postcount + ',  
		                    [topics]=[topics] - ' + @topiccount + ', 
		                    [todayposts] = [todayposts] - ' + @todaycount + ' 
		                    WHERE [fid] IN ('+@fid+')')
	                    END
		
                    EXEC('DELETE FROM [dnt_favorites] WHERE [tid] IN ('+@tidlist+') AND [typeid]=0')
					
                    EXEC('DELETE FROM [dnt_polls] WHERE [tid] IN ('+@tidlist+')')

                    EXEC('DELETE FROM [dnt_posts1] WHERE [tid] IN ('+@tidlist+')')

                    EXEC('DELETE FROM [dnt_mytopics] WHERE [tid] IN ('+@tidlist+')')
                END
            EXEC('DELETE FROM [dnt_topics] WHERE [closed] IN ('+@tidlist+') OR [tid] IN ('+@tidlist+')')
			
            EXEC('UPDATE [dnt_tags] SET [count]=[count]-1, [fcount]=[fcount]-1 WHERE [tagid] IN (SELECT [tagid] FROM [dnt_topictags] WHERE [tid] IN ('+@tidlist+'))') 
			
            EXEC('DELETE FROM [dnt_topictags] WHERE [tid] IN ('+@tidlist+')')
			
            EXEC('DELETE FROM [dnt_topictagcaches] WHERE [tid] IN ('+@tidlist+') OR [linktid] IN ('+@tidlist+')')
END