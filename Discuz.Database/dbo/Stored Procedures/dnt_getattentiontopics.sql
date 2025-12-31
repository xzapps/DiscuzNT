
CREATE PROCEDURE [dnt_getattentiontopics] 

@fid varchar(255)='',
@tpp int,
@pageid int,
@condition nvarchar(255)=''
AS

DECLARE @pagetop int,@strSQL varchar(5000)

SET @pagetop = (@pageid-1)*@tpp
IF @pageid = 1
	BEGIN
		SET @strSQL = 'SELECT TOP  ' +STR( @tpp) + '  * FROM [dnt_topics] WHERE [displayorder]>=0  AND [attention]=1'
                     	
		IF @fid<>'0'
                            SELECT  @strSQL=@strSQL+'  AND [fid] IN ('+@fid+')'


                            IF @condition<>''
                            SELECT  @strSQL=@strSQL+@condition

                           SELECT @strSQL=@strSQL+'  ORDER BY [lastpost] DESC'
                            

      
	END
ELSE
	BEGIN
		SET @strSQL = 'SELECT TOP  ' +STR( @tpp) + '  * FROM [dnt_topics]  WHERE [tid] < (SELECT MIN([tid])  FROM (SELECT TOP '+STR(@pagetop)+' [tid] FROM [dnt_topics]   WHERE [displayorder]>=0  AND [attention]=1'
		

		 IF @fid<>'0'
 
                            SELECT  @strSQL=@strSQL+'  AND [fid] IN ('+@fid+')'
                          


                            IF @condition<>''
                            SELECT  @strSQL=@strSQL+@condition
                     

                          SELECT @strSQL=@strSQL+'   ORDER BY [tid] DESC'


                          SELECT @strSQL=@strSQL+'  )  AS T) '

		 IF @fid<>'0'
 
                           SELECT  @strSQL=@strSQL+'  AND [fid] IN ('+@fid+')'

			    IF @condition<>''
                            SELECT  @strSQL=@strSQL+@condition


                           SELECT @strSQL=@strSQL+'  AND [displayorder]>=0  AND [attention]=1 ORDER BY [tid] DESC'

                                 
	END
EXEC(@strSQL)