
CREATE PROCEDURE [dnt_getlastpostlist1]
	@tid int,
	@pageindex int,
	@postnum int
	--@posttablename varchar(20)
AS
DECLARE @startRow int,
		@endRow int
SET @startRow = (@pageIndex - 1) * @postnum +1
SET @endRow = @startRow + @postnum -1

SELECT 
		[POST].[pid],
		[POST].[fid], 
		[POST].[layer],
		[POST].[posterid],
		[POST].[title], 
		[POST].[message], 
		[POST].[postdatetime], 
		[POST].[attachment], 
		[POST].[poster], 
		[POST].[invisible], 
		[POST].[usesig], 
		[POST].[htmlon], 
		[POST].[smileyoff], 
		[POST].[parseurloff], 
		[POST].[bbcodeoff], 
		[POST].[rate], 
		[POST].[ratetimes], 
		[POST].[username], 
		[POST].[email], 
		[POST].[showemail], 
		[POST].[avatar], 
		[POST].[avatarwidth], 
		[POST].[avatarheight], 
		[POST].[signature], 
		[POST].[location], 
		[POST].[customstatus] 
FROM (SELECT ROW_NUMBER() OVER(ORDER BY [pid]) AS ROWID,
		[dnt_posts1].[pid],
		[dnt_posts1].[fid], 
		[dnt_posts1].[layer],
		[dnt_posts1].[posterid],
		[dnt_posts1].[title], 
		[dnt_posts1].[message], 
		[dnt_posts1].[postdatetime], 
		[dnt_posts1].[attachment], 
		[dnt_posts1].[poster], 
		[dnt_posts1].[invisible], 
		[dnt_posts1].[usesig], 
		[dnt_posts1].[htmlon], 
		[dnt_posts1].[smileyoff], 
		[dnt_posts1].[parseurloff], 
		[dnt_posts1].[bbcodeoff], 
		[dnt_posts1].[rate], 
		[dnt_posts1].[ratetimes], 
		[dnt_users].[username], 
		[dnt_users].[email], 
		[dnt_users].[showemail], 
		[dnt_userfields].[avatar], 
		[dnt_userfields].[avatarwidth], 
		[dnt_userfields].[avatarheight], 
		[dnt_userfields].[sightml] AS [signature], 
		[dnt_userfields].[location], 
		[dnt_userfields].[customstatus] 
		FROM [dnt_posts1] 
		LEFT JOIN [dnt_users] ON [dnt_users].[uid]=[dnt_posts1].[posterid]
		LEFT JOIN [dnt_userfields] ON [dnt_userfields].[uid]=[dnt_users].[uid]
		WHERE [dnt_posts1].[tid] = @tid AND [dnt_posts1].[invisible] <=0 AND [dnt_posts1].layer <> 0) AS POST
		WHERE ROWID BETWEEN @startRow AND @endRow