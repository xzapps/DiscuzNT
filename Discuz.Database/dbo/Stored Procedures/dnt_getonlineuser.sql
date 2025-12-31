
CREATE PROCEDURE [dnt_getonlineuser]
@userid int,
@password char(32)
AS
SELECT TOP 1 [olid]
      ,[userid]
      ,[ip]
      ,[username]
      ,[nickname]
      ,[password]
      ,[groupid]
      ,[olimg]
      ,[adminid]
      ,[invisible]
      ,[action]
      ,[lastactivity]
      ,[lastposttime]
      ,[lastpostpmtime]
      ,[lastsearchtime]
      ,[lastupdatetime]
      ,[forumid]
      ,[forumname]
      ,[titleid]
      ,[title]
      ,[verifycode]
      ,[newpms]
      ,[newnotices]
       FROM [dnt_online] WHERE [userid]=@userid AND [password]=@password