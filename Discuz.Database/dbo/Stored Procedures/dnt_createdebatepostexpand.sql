
CREATE PROCEDURE [dnt_createdebatepostexpand]
	@tid int,
	@pid int,
	@opinion int,
	@diggs int
AS
BEGIN
	INSERT INTO [dnt_postdebatefields] VALUES(@tid, @pid, @opinion, @diggs)
	IF @opinion = 1
		UPDATE [dnt_debates] SET [positivediggs] = [positivediggs] + 1 WHERE [tid] = @tid
	ELSE IF @opinion = 2
		UPDATE [dnt_debates] SET [negativediggs] = [negativediggs] + 1 WHERE [tid] = @tid
END