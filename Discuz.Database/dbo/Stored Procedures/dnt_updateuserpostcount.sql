
CREATE PROC [dnt_updateuserpostcount]
@postcount INT,
@userid INT
AS
UPDATE [dnt_users] SET [posts]=@postcount WHERE [dnt_users].[uid] = @userid