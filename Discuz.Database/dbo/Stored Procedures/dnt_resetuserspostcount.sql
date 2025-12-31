
CREATE PROC [dnt_resetuserspostcount]
@posttablename NVARCHAR(50)
AS
EXEC('
		UPDATE dnt_users
		SET posts = posts + leftTable.postcount 
		FROM dnt_users 
		INNER JOIN (SELECT posterid,COUNT(pid) postcount FROM '+@posttablename+' GROUP BY posterid) AS leftTable
		ON dnt_users.[uid] = leftTable.posterid
		WHERE dnt_users.[uid] = leftTable.posterid
	')