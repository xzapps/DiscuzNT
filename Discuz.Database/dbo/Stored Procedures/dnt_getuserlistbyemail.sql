
CREATE PROCEDURE [dnt_getuserlistbyemail]
@email nvarchar(50)
AS
BEGIN
	SELECT [u].[uid],[u].[username],[u].[nickname],[u].[password],[u].[secques],
	[u].[spaceid],[u].[gender],[u].[adminid],[u].[groupid],[u].[groupexpiry],
	[u].[extgroupids],[u].[regip],[u].[joindate],[u].[lastip],[u].[lastvisit],
	[u].[lastactivity],[u].[lastpost],[u].[lastpostid],[u].[lastposttitle],
	[u].[posts],[u].[digestposts],[u].[oltime],[u].[pageviews],[u].[credits],
	[u].[extcredits1],[u].[extcredits2],[u].[extcredits3],[u].[extcredits4],
	[u].[extcredits5],[u].[extcredits6],[u].[extcredits7],[u].[extcredits8],
	[u].[avatarshowid],[u].[email],[u].[bday],[u].[sigstatus],[u].[tpp],[u].[ppp],
	[u].[templateid],[u].[pmsound],[u].[showemail],[u].[invisible],[u].[newpm],
	[u].[newpmcount],[u].[accessmasks],[u].[onlinestate],[u].[newsletter],
	 [uf].[website],[uf].[icq],[uf].[qq],[uf].[yahoo],[uf].[msn],[uf].[skype],
	 [uf].[location],[uf].[customstatus],[uf].[avatar],[uf].[avatarwidth],
	 [uf].[avatarheight],[uf].[medals],[uf].[bio],[uf].[signature],[uf].[sightml],
	 [uf].[authstr],[uf].[authtime],[uf].[authflag],[uf].[realname],[uf].[idcard],
	 [uf].[mobile],[uf].[phone],[uf].[ignorepm],[u].[salt] FROM [dnt_users] AS [u]
	 LEFT JOIN [dnt_userfields] AS [uf] ON [u].[uid]=[uf].[uid] WHERE [u].[email]=@email
END