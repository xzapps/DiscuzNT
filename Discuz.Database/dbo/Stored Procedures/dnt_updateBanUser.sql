
CREATE PROC dnt_updateBanUser
@groupid		INT,
@groupexpiry	VARCHAR(50), 
@uid			INT
AS

UPDATE [dnt_users] SET [groupid]=@groupid, [groupexpiry]=@groupexpiry WHERE [uid]=@uid;
UPDATE [dnt_online] SET [groupid]=@groupid WHERE userid=@uid;