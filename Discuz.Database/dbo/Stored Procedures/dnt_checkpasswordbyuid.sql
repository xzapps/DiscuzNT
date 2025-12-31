
CREATE PROCEDURE [dnt_checkpasswordbyuid]
@uid int,
@password char(32)
AS
SELECT TOP 1 [uid], [groupid], [adminid] FROM [dnt_users] WHERE [uid]=@uid AND [password]=@password