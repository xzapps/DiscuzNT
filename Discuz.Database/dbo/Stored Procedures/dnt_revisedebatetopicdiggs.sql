
CREATE PROCEDURE [dnt_revisedebatetopicdiggs]
	@tid int,
	@opinion int,
	@count int out
AS
BEGIN
	SELECT @count=COUNT(1) FROM [dnt_postdebatefields] WHERE [tid] = @tid AND [opinion] = @opinion
	
	IF @opinion=1
	BEGIN
		UPDATE [dnt_debates] SET [positivediggs]=(SELECT SUM(diggs + 1) FROM [dnt_postdebatefields] WHERE [tid] = @tid AND [opinion] = @opinion) WHERE [tid] = @tid
	END
	ELSE
	BEGIN
		UPDATE [dnt_debates] SET [negativediggs]=(SELECT SUM(diggs + 1) FROM [dnt_postdebatefields] WHERE [tid] = @tid AND [opinion] = @opinion) WHERE [tid] = @tid
	END
END