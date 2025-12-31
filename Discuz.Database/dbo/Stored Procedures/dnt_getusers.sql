
CREATE PROC [dnt_getusers]
@start_uid INT,
@end_uid INT
AS
SELECT [uid] FROM [dnt_users] WHERE [uid] >= @start_uid AND [uid]<=@end_uid