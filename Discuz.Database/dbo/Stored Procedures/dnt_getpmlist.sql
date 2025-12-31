
CREATE PROCEDURE [dnt_getpmlist]
@userid int,
@folder int,
@pagesize int,
@pageindex int,
@inttype int
AS
DECLARE @startRow int,
		@endRow int
SET @startRow = (@pageindex - 1) * @pagesize + 1
SET @endRow = @startRow + @pagesize - 1

IF (@folder <> 0)
BEGIN
	IF (@inttype <> 1)
	BEGIN
		SELECT 
		[PMS].[pmid],
		[PMS].[msgfrom],
		[PMS].[msgfromid],
		[PMS].[msgto],
		[PMS].[msgtoid],
		[PMS].[folder],
		[PMS].[new],
		[PMS].[subject],
		[PMS].[postdatetime],
		[PMS].[message]		
		FROM(SELECT ROW_NUMBER() OVER(ORDER BY [pmid] DESC) AS ROWID,
		[pmid],
		[msgfrom],
		[msgfromid],
		[msgto],
		[msgtoid],
		[folder],
		[new],
		[subject],
		[postdatetime],
		[message]
		FROM [dnt_pms]
		WHERE [msgfromid] = @userid AND [folder] = @folder) AS PMS
		WHERE ROWID BETWEEN @startRow AND @endRow
	END
	
	ELSE
	BEGIN
		SELECT 
		[PMS].[pmid],
		[PMS].[msgfrom],
		[PMS].[msgfromid],
		[PMS].[msgto],
		[PMS].[msgtoid],
		[PMS].[folder],
		[PMS].[new],
		[PMS].[subject],
		[PMS].[postdatetime],
		[PMS].[message]		
		FROM(SELECT ROW_NUMBER() OVER(ORDER BY [pmid] DESC) AS ROWID,
		[pmid],
		[msgfrom],
		[msgfromid],
		[msgto],
		[msgtoid],
		[folder],
		[new],
		[subject],
		[postdatetime],
		[message]
		FROM [dnt_pms]
		WHERE [msgfromid] = @userid AND [folder] = @folder AND [new] = 1) AS PMS
		WHERE ROWID BETWEEN @startRow AND @endRow
	END
END

ELSE
BEGIN
	IF (@inttype <> 1)
	BEGIN
		SELECT 
		[PMS].[pmid],
		[PMS].[msgfrom],
		[PMS].[msgfromid],
		[PMS].[msgto],
		[PMS].[msgtoid],
		[PMS].[folder],
		[PMS].[new],
		[PMS].[subject],
		[PMS].[postdatetime],
		[PMS].[message] 
		FROM(SELECT ROW_NUMBER() OVER(ORDER BY [pmid] DESC) AS ROWID,
		[pmid],
		[msgfrom],
		[msgfromid],
		[msgto],
		[msgtoid],
		[folder],
		[new],
		[subject],
		[postdatetime],
		[message]
		FROM [dnt_pms]
		WHERE [msgtoid] = @userid AND [folder] = @folder) AS PMS
		WHERE ROWID BETWEEN @startRow AND @endRow
	END
	
	ELSE
	BEGIN
		SELECT 
		[PMS].[pmid],
		[PMS].[msgfrom],
		[PMS].[msgfromid],
		[PMS].[msgto],
		[PMS].[msgtoid],
		[PMS].[folder],
		[PMS].[new],
		[PMS].[subject],
		[PMS].[postdatetime],
		[PMS].[message] 
		FROM(SELECT ROW_NUMBER() OVER(ORDER BY [pmid] DESC) AS ROWID,
		[pmid],
		[msgfrom],
		[msgfromid],
		[msgto],
		[msgtoid],
		[folder],
		[new],
		[subject],
		[postdatetime],
		[message]
		FROM [dnt_pms]
		WHERE [msgtoid] = @userid AND [folder] = @folder AND [new] = 1) AS PMS
		WHERE ROWID BETWEEN @startRow AND @endRow
	END
END