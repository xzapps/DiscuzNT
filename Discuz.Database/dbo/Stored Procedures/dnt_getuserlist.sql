
CREATE PROCEDURE [dnt_getuserlist]
@pagesize int,
@pageindex int,
@column varchar(20),
@ordertype AS varchar(5)
AS
DECLARE @startRow int,
		@endRow	int
SET @startRow = (@pageindex - 1) * @pagesize + 1
SET @endRow = @startRow + @pagesize - 1

IF (@ordertype = 'DESC')
BEGIN
	IF (@column = 'username')
	BEGIN
		SELECT 
			[USERS].[uid], 
			[USERS].[groupid], 
			[USERS].[username], 
			[USERS].[nickname], 
			[USERS].[joindate], 
			[USERS].[credits], 
			[USERS].[posts], 
			[USERS].[email], 
			[USERS].[lastactivity], 
			[USERS].[oltime], 
			[USERS].[location] 
		FROM (SELECT ROW_NUMBER() OVER(ORDER BY [dnt_users].[username] DESC ) AS ROWID,
			[dnt_users].[uid], 
			[dnt_users].[groupid], 
			[dnt_users].[username], 
			[dnt_users].[nickname], 
			[dnt_users].[joindate], 
			[dnt_users].[credits], 
			[dnt_users].[posts], 
			[dnt_users].[email], 
			[dnt_users].[lastactivity], 
			[dnt_users].[oltime], 
			[dnt_userfields].[location]
		FROM [dnt_users]
		LEFT JOIN [dnt_userfields] ON [dnt_userfields].[uid] = [dnt_users].[uid]) AS USERS
		WHERE ROWID BETWEEN @startRow AND @endRow
	END
	ELSE IF (@column = 'credits')
	BEGIN
		SELECT 
			[USERS].[uid], 
			[USERS].[groupid], 
			[USERS].[username], 
			[USERS].[nickname], 
			[USERS].[joindate], 
			[USERS].[credits], 
			[USERS].[posts], 
			[USERS].[email], 
			[USERS].[lastactivity], 
			[USERS].[oltime], 
			[USERS].[location] 
		FROM (SELECT ROW_NUMBER() OVER(ORDER BY [dnt_users].[credits] DESC ) AS ROWID,
			[dnt_users].[uid], 
			[dnt_users].[groupid], 
			[dnt_users].[username], 
			[dnt_users].[nickname], 
			[dnt_users].[joindate], 
			[dnt_users].[credits], 
			[dnt_users].[posts], 
			[dnt_users].[email], 
			[dnt_users].[lastactivity], 
			[dnt_users].[oltime], 
			[dnt_userfields].[location]
		FROM [dnt_users]
		LEFT JOIN [dnt_userfields] ON [dnt_userfields].[uid] = [dnt_users].[uid]) AS USERS
		WHERE ROWID BETWEEN @startRow AND @endRow
	END
	ELSE IF (@column = 'posts')
	BEGIN
		SELECT 
			[USERS].[uid], 
			[USERS].[groupid], 
			[USERS].[username], 
			[USERS].[nickname], 
			[USERS].[joindate], 
			[USERS].[credits], 
			[USERS].[posts], 
			[USERS].[email], 
			[USERS].[lastactivity], 
			[USERS].[oltime], 
			[USERS].[location] 
		FROM (SELECT ROW_NUMBER() OVER(ORDER BY [dnt_users].[posts] DESC ) AS ROWID,
			[dnt_users].[uid], 
			[dnt_users].[groupid], 
			[dnt_users].[username], 
			[dnt_users].[nickname], 
			[dnt_users].[joindate], 
			[dnt_users].[credits], 
			[dnt_users].[posts], 
			[dnt_users].[email], 
			[dnt_users].[lastactivity], 
			[dnt_users].[oltime], 
			[dnt_userfields].[location]
		FROM [dnt_users]
		LEFT JOIN [dnt_userfields] ON [dnt_userfields].[uid] = [dnt_users].[uid]) AS USERS
		WHERE ROWID BETWEEN @startRow AND @endRow
	END
	ELSE IF (@column = 'admin')
	BEGIN
		SELECT 
			[USERS].[uid], 
			[USERS].[groupid], 
			[USERS].[username], 
			[USERS].[nickname], 
			[USERS].[joindate], 
			[USERS].[credits], 
			[USERS].[posts], 
			[USERS].[email], 
			[USERS].[lastactivity], 
			[USERS].[oltime], 
			[USERS].[location] 
		FROM (SELECT ROW_NUMBER() OVER(ORDER BY [dnt_users].[adminid] ASC ) AS ROWID,
			[dnt_users].[uid], 
			[dnt_users].[groupid], 
			[dnt_users].[username], 
			[dnt_users].[nickname], 
			[dnt_users].[joindate], 
			[dnt_users].[credits], 
			[dnt_users].[posts], 
			[dnt_users].[email], 
			[dnt_users].[lastactivity], 
			[dnt_users].[oltime], 
			[dnt_userfields].[location]
		FROM [dnt_users]
		LEFT JOIN [dnt_userfields] ON [dnt_userfields].[uid] = [dnt_users].[uid] WHERE [dnt_users].[adminid] > 0) AS USERS
		WHERE ROWID BETWEEN @startRow AND @endRow
	END
	ELSE IF (@column = 'lastactivity')
	BEGIN
		SELECT 
			[USERS].[uid], 
			[USERS].[groupid], 
			[USERS].[username], 
			[USERS].[nickname], 
			[USERS].[joindate], 
			[USERS].[credits], 
			[USERS].[posts], 
			[USERS].[email], 
			[USERS].[lastactivity], 
			[USERS].[oltime], 
			[USERS].[location] 
		FROM (SELECT ROW_NUMBER() OVER(ORDER BY [dnt_users].[lastactivity] DESC ) AS ROWID,
			[dnt_users].[uid], 
			[dnt_users].[groupid], 
			[dnt_users].[username], 
			[dnt_users].[nickname], 
			[dnt_users].[joindate], 
			[dnt_users].[credits], 
			[dnt_users].[posts], 
			[dnt_users].[email], 
			[dnt_users].[lastactivity], 
			[dnt_users].[oltime], 
			[dnt_userfields].[location]
		FROM [dnt_users]
		LEFT JOIN [dnt_userfields] ON [dnt_userfields].[uid] = [dnt_users].[uid]) AS USERS
		WHERE ROWID BETWEEN @startRow AND @endRow
	END
	ELSE IF (@column = 'joindate')
	BEGIN
		SELECT 
			[USERS].[uid], 
			[USERS].[groupid], 
			[USERS].[username], 
			[USERS].[nickname], 
			[USERS].[joindate], 
			[USERS].[credits], 
			[USERS].[posts], 
			[USERS].[email], 
			[USERS].[lastactivity], 
			[USERS].[oltime], 
			[USERS].[location] 
		FROM (SELECT ROW_NUMBER() OVER(ORDER BY [dnt_users].[joindate] DESC ) AS ROWID,
			[dnt_users].[uid], 
			[dnt_users].[groupid], 
			[dnt_users].[username], 
			[dnt_users].[nickname], 
			[dnt_users].[joindate], 
			[dnt_users].[credits], 
			[dnt_users].[posts], 
			[dnt_users].[email], 
			[dnt_users].[lastactivity], 
			[dnt_users].[oltime], 
			[dnt_userfields].[location]
		FROM [dnt_users]
		LEFT JOIN [dnt_userfields] ON [dnt_userfields].[uid] = [dnt_users].[uid]) AS USERS
		WHERE ROWID BETWEEN @startRow AND @endRow
	END
	ELSE IF (@column = 'oltime')
	BEGIN
		SELECT 
			[USERS].[uid], 
			[USERS].[groupid], 
			[USERS].[username], 
			[USERS].[nickname], 
			[USERS].[joindate], 
			[USERS].[credits], 
			[USERS].[posts], 
			[USERS].[email], 
			[USERS].[lastactivity], 
			[USERS].[oltime], 
			[USERS].[location] 
		FROM (SELECT ROW_NUMBER() OVER(ORDER BY [dnt_users].[oltime] DESC ) AS ROWID,
			[dnt_users].[uid], 
			[dnt_users].[groupid], 
			[dnt_users].[username], 
			[dnt_users].[nickname], 
			[dnt_users].[joindate], 
			[dnt_users].[credits], 
			[dnt_users].[posts], 
			[dnt_users].[email], 
			[dnt_users].[lastactivity], 
			[dnt_users].[oltime], 
			[dnt_userfields].[location]
		FROM [dnt_users]
		LEFT JOIN [dnt_userfields] ON [dnt_userfields].[uid] = [dnt_users].[uid]) AS USERS
		WHERE ROWID BETWEEN @startRow AND @endRow
	END
	ELSE
	BEGIN
		SELECT 
			[USERS].[uid], 
			[USERS].[groupid], 
			[USERS].[username], 
			[USERS].[nickname], 
			[USERS].[joindate], 
			[USERS].[credits], 
			[USERS].[posts], 
			[USERS].[email], 
			[USERS].[lastactivity], 
			[USERS].[oltime], 
			[USERS].[location] 
		FROM (SELECT ROW_NUMBER() OVER(ORDER BY [dnt_users].[uid] DESC ) AS ROWID,
			[dnt_users].[uid], 
			[dnt_users].[groupid], 
			[dnt_users].[username], 
			[dnt_users].[nickname], 
			[dnt_users].[joindate], 
			[dnt_users].[credits], 
			[dnt_users].[posts], 
			[dnt_users].[email], 
			[dnt_users].[lastactivity], 
			[dnt_users].[oltime], 
			[dnt_userfields].[location]
		FROM [dnt_users]
		LEFT JOIN [dnt_userfields] ON [dnt_userfields].[uid] = [dnt_users].[uid]) AS USERS
		WHERE ROWID BETWEEN @startRow AND @endRow
	END
END
ELSE
BEGIN
	IF (@column = 'username')
	BEGIN
		SELECT 
			[USERS].[uid], 
			[USERS].[groupid], 
			[USERS].[username], 
			[USERS].[nickname], 
			[USERS].[joindate], 
			[USERS].[credits], 
			[USERS].[posts], 
			[USERS].[email], 
			[USERS].[lastactivity], 
			[USERS].[oltime], 
			[USERS].[location] 
		FROM (SELECT ROW_NUMBER() OVER(ORDER BY [dnt_users].[username] ASC ) AS ROWID,
			[dnt_users].[uid], 
			[dnt_users].[groupid], 
			[dnt_users].[username], 
			[dnt_users].[nickname], 
			[dnt_users].[joindate], 
			[dnt_users].[credits], 
			[dnt_users].[posts], 
			[dnt_users].[email], 
			[dnt_users].[lastactivity], 
			[dnt_users].[oltime], 
			[dnt_userfields].[location]
		FROM [dnt_users]
		LEFT JOIN [dnt_userfields] ON [dnt_userfields].[uid] = [dnt_users].[uid]) AS USERS
		WHERE ROWID BETWEEN @startRow AND @endRow
	END
	ELSE IF (@column = 'credits')
	BEGIN
		SELECT 
			[USERS].[uid], 
			[USERS].[groupid], 
			[USERS].[username], 
			[USERS].[nickname], 
			[USERS].[joindate], 
			[USERS].[credits], 
			[USERS].[posts], 
			[USERS].[email], 
			[USERS].[lastactivity], 
			[USERS].[oltime], 
			[USERS].[location] 
		FROM (SELECT ROW_NUMBER() OVER(ORDER BY [dnt_users].[credits] ASC ) AS ROWID,
			[dnt_users].[uid], 
			[dnt_users].[groupid], 
			[dnt_users].[username], 
			[dnt_users].[nickname], 
			[dnt_users].[joindate], 
			[dnt_users].[credits], 
			[dnt_users].[posts], 
			[dnt_users].[email], 
			[dnt_users].[lastactivity], 
			[dnt_users].[oltime], 
			[dnt_userfields].[location]
		FROM [dnt_users]
		LEFT JOIN [dnt_userfields] ON [dnt_userfields].[uid] = [dnt_users].[uid]) AS USERS
		WHERE ROWID BETWEEN @startRow AND @endRow
	END
	ELSE IF (@column = 'posts')
	BEGIN
		SELECT 
			[USERS].[uid], 
			[USERS].[groupid], 
			[USERS].[username], 
			[USERS].[nickname], 
			[USERS].[joindate], 
			[USERS].[credits], 
			[USERS].[posts], 
			[USERS].[email], 
			[USERS].[lastactivity], 
			[USERS].[oltime], 
			[USERS].[location] 
		FROM (SELECT ROW_NUMBER() OVER(ORDER BY [dnt_users].[posts] ASC ) AS ROWID,
			[dnt_users].[uid], 
			[dnt_users].[groupid], 
			[dnt_users].[username], 
			[dnt_users].[nickname], 
			[dnt_users].[joindate], 
			[dnt_users].[credits], 
			[dnt_users].[posts], 
			[dnt_users].[email], 
			[dnt_users].[lastactivity], 
			[dnt_users].[oltime], 
			[dnt_userfields].[location]
		FROM [dnt_users]
		LEFT JOIN [dnt_userfields] ON [dnt_userfields].[uid] = [dnt_users].[uid]) AS USERS
		WHERE ROWID BETWEEN @startRow AND @endRow
	END
	ELSE IF (@column = 'admin')
	BEGIN
		SELECT 
			[USERS].[uid], 
			[USERS].[groupid], 
			[USERS].[username], 
			[USERS].[nickname], 
			[USERS].[joindate], 
			[USERS].[credits], 
			[USERS].[posts], 
			[USERS].[email], 
			[USERS].[lastactivity], 
			[USERS].[oltime], 
			[USERS].[location] 
		FROM (SELECT ROW_NUMBER() OVER(ORDER BY [dnt_users].[adminid] DESC ) AS ROWID,
			[dnt_users].[uid], 
			[dnt_users].[groupid], 
			[dnt_users].[username], 
			[dnt_users].[nickname], 
			[dnt_users].[joindate], 
			[dnt_users].[credits], 
			[dnt_users].[posts], 
			[dnt_users].[email], 
			[dnt_users].[lastactivity], 
			[dnt_users].[oltime], 
			[dnt_userfields].[location]
		FROM [dnt_users]
		LEFT JOIN [dnt_userfields] ON [dnt_userfields].[uid] = [dnt_users].[uid] WHERE [dnt_users].[adminid] > 0) AS USERS
		WHERE ROWID BETWEEN @startRow AND @endRow
	END
	ELSE IF (@column = 'lastactivity')
	BEGIN
		SELECT 
			[USERS].[uid], 
			[USERS].[groupid], 
			[USERS].[username], 
			[USERS].[nickname], 
			[USERS].[joindate], 
			[USERS].[credits], 
			[USERS].[posts], 
			[USERS].[email], 
			[USERS].[lastactivity], 
			[USERS].[oltime], 
			[USERS].[location] 
		FROM (SELECT ROW_NUMBER() OVER(ORDER BY [dnt_users].[lastactivity] ASC ) AS ROWID,
			[dnt_users].[uid], 
			[dnt_users].[groupid], 
			[dnt_users].[username], 
			[dnt_users].[nickname], 
			[dnt_users].[joindate], 
			[dnt_users].[credits], 
			[dnt_users].[posts], 
			[dnt_users].[email], 
			[dnt_users].[lastactivity], 
			[dnt_users].[oltime], 
			[dnt_userfields].[location]
		FROM [dnt_users]
		LEFT JOIN [dnt_userfields] ON [dnt_userfields].[uid] = [dnt_users].[uid]) AS USERS
		WHERE ROWID BETWEEN @startRow AND @endRow
	END
	ELSE IF (@column = 'joindate')
	BEGIN
		SELECT 
			[USERS].[uid], 
			[USERS].[groupid], 
			[USERS].[username], 
			[USERS].[nickname], 
			[USERS].[joindate], 
			[USERS].[credits], 
			[USERS].[posts], 
			[USERS].[email], 
			[USERS].[lastactivity], 
			[USERS].[oltime], 
			[USERS].[location] 
		FROM (SELECT ROW_NUMBER() OVER(ORDER BY [dnt_users].[joindate] ASC ) AS ROWID,
			[dnt_users].[uid], 
			[dnt_users].[groupid], 
			[dnt_users].[username], 
			[dnt_users].[nickname], 
			[dnt_users].[joindate], 
			[dnt_users].[credits], 
			[dnt_users].[posts], 
			[dnt_users].[email], 
			[dnt_users].[lastactivity], 
			[dnt_users].[oltime], 
			[dnt_userfields].[location]
		FROM [dnt_users]
		LEFT JOIN [dnt_userfields] ON [dnt_userfields].[uid] = [dnt_users].[uid]) AS USERS
		WHERE ROWID BETWEEN @startRow AND @endRow
	END
	ELSE IF (@column = 'oltime')
	BEGIN
		SELECT 
			[USERS].[uid], 
			[USERS].[groupid], 
			[USERS].[username], 
			[USERS].[nickname], 
			[USERS].[joindate], 
			[USERS].[credits], 
			[USERS].[posts], 
			[USERS].[email], 
			[USERS].[lastactivity], 
			[USERS].[oltime], 
			[USERS].[location] 
		FROM (SELECT ROW_NUMBER() OVER(ORDER BY [dnt_users].[oltime] ASC ) AS ROWID,
			[dnt_users].[uid], 
			[dnt_users].[groupid], 
			[dnt_users].[username], 
			[dnt_users].[nickname], 
			[dnt_users].[joindate], 
			[dnt_users].[credits], 
			[dnt_users].[posts], 
			[dnt_users].[email], 
			[dnt_users].[lastactivity], 
			[dnt_users].[oltime], 
			[dnt_userfields].[location]
		FROM [dnt_users]
		LEFT JOIN [dnt_userfields] ON [dnt_userfields].[uid] = [dnt_users].[uid]) AS USERS
		WHERE ROWID BETWEEN @startRow AND @endRow
	END
	ELSE
	BEGIN
		SELECT 
			[USERS].[uid], 
			[USERS].[groupid], 
			[USERS].[username], 
			[USERS].[nickname], 
			[USERS].[joindate], 
			[USERS].[credits], 
			[USERS].[posts], 
			[USERS].[email], 
			[USERS].[lastactivity], 
			[USERS].[oltime], 
			[USERS].[location] 
		FROM (SELECT ROW_NUMBER() OVER(ORDER BY [dnt_users].[uid] ASC ) AS ROWID,
			[dnt_users].[uid], 
			[dnt_users].[groupid], 
			[dnt_users].[username], 
			[dnt_users].[nickname], 
			[dnt_users].[joindate], 
			[dnt_users].[credits], 
			[dnt_users].[posts], 
			[dnt_users].[email], 
			[dnt_users].[lastactivity], 
			[dnt_users].[oltime], 
			[dnt_userfields].[location]
		FROM [dnt_users]
		LEFT JOIN [dnt_userfields] ON [dnt_userfields].[uid] = [dnt_users].[uid]) AS USERS
		WHERE ROWID BETWEEN @startRow AND @endRow
	END
END