
CREATE PROC [dnt_updateonlinelist]
@title NVARCHAR(50),
@groupid INT
AS
UPDATE [dnt_onlinelist] SET [title]=@title WHERE [groupid]=@groupid