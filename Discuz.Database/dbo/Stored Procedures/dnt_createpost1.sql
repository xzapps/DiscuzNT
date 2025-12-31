
CREATE PROCEDURE [dnt_createpost1]
@fid int,
                    @tid int,
                    @parentid int,
                    @layer int,
                    @poster varchar(20),
                    @posterid int,
                    @title nvarchar(60),
                    @topictitle nvarchar(60),
                    @postdatetime datetime,
                    @message ntext,
                    @ip varchar(15),
                    @lastedit varchar(50),
                    @invisible int,
                    @usesig int,
                    @htmlon int,
                    @smileyoff int,
                    @bbcodeoff int,
                    @parseurloff int,
                    @attachment int,
                    @rate int,
                    @ratetimes int

                    AS


                    DEClARE @postid int

                    DELETE FROM [dnt_postid] WHERE DATEDIFF(n, postdatetime, GETDATE()) >5

                    INSERT INTO [dnt_postid] ([postdatetime]) VALUES(GETDATE())

                    SELECT @postid=SCOPE_IDENTITY()

                    INSERT INTO [dnt_posts1]([pid], [fid], [tid], [parentid], [layer], [poster], [posterid], [title], [postdatetime], [message], [ip], [lastedit], [invisible], [usesig], [htmlon], [smileyoff], [bbcodeoff], [parseurloff], [attachment], [rate], [ratetimes]) VALUES(@postid, @fid, @tid, @parentid, @layer, @poster, @posterid, @title, @postdatetime, @message, @ip, @lastedit, @invisible, @usesig, @htmlon, @smileyoff, @bbcodeoff, @parseurloff, @attachment, @rate, @ratetimes)

                    IF @parentid=0
                        BEGIN
                            UPDATE [dnt_posts1] SET [parentid]=@postid WHERE [pid]=@postid
                        END

                    IF @@ERROR=0
                        BEGIN
                            IF  @invisible = 0
                            BEGIN
                                UPDATE [dnt_statistics] SET [totalpost]=[totalpost] + 1	
                                DECLARE @fidlist AS VARCHAR(1000)
                                DECLARE @strsql AS VARCHAR(4000)         			
                                SET @fidlist = '';
                    			
                                SELECT @fidlist = ISNULL([parentidlist],'') FROM [dnt_forums] WHERE [fid] = @fid
                                IF RTRIM(@fidlist)<>''
	                                BEGIN
		                                SET @fidlist = RTRIM(@fidlist) + ',' + CAST(@fid AS VARCHAR(10))
	                                END
                                ELSE
	                                BEGIN
		                                SET @fidlist = CAST(@fid AS VARCHAR(10))
	                                END
                                UPDATE [dnt_forums] SET 
						                                [posts]=[posts] + 1, 
						                                [todayposts]=CASE 
										                                WHEN DATEDIFF(day, [lastpost], GETDATE())=0 THEN [todayposts] + 1 
									                                 ELSE 1 
									                                 END,
						                                [lasttid]=@tid,	
														[lasttitle]=@topictitle,
						                                [lastpost]=@postdatetime,
						                                [lastposter]=@poster,
						                                [lastposterid]=@posterid 
                    							
				                                		WHERE fid IN (SELECT [item] FROM [dnt_split](@fidlist, ','))
                                UPDATE [dnt_users] SET
	                                [lastpost] = @postdatetime,
	                                [lastpostid] = @postid,
	                                [lastposttitle] = @title,
	                                [posts] = [posts] + 1,
	                                [lastactivity] = GETDATE()
                                WHERE [uid] = @posterid
                                IF @layer<=0
	                                BEGIN
		                                UPDATE [dnt_topics] SET [replies]=0,[lastposter]=@poster,[lastpost]=@postdatetime,[lastposterid]=@posterid WHERE [tid]=@tid
	                                END
                                ELSE
	                                BEGIN
		                                UPDATE [dnt_topics] SET [replies]=[replies] + 1,[lastposter]=@poster,[lastpost]=@postdatetime,[lastposterid]=@posterid WHERE [tid]=@tid
	                                END
                                UPDATE [dnt_topics] SET [lastpostid]=@postid WHERE [tid]=@tid
                            END
                            ELSE IF @layer<=0
								BEGIN
									UPDATE [dnt_topics] SET [replies]=0,[lastposter]=@poster,[lastpost]=@postdatetime,[lastposterid]=@posterid,[lastpostid]=@postid WHERE [tid]=@tid
								END
                        IF @posterid <> -1
                            BEGIN
                                INSERT [dnt_myposts]([uid], [tid], [pid], [dateline]) VALUES(@posterid, @tid, @postid, @postdatetime)
                            END
                        END
                    SELECT @postid AS postid