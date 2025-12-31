
CREATE PROCEDURE [dnt_deletetopictags]
	@tid int
 AS
BEGIN       
	UPDATE [dnt_tags] SET [count]=[count]-1,[fcount]=[fcount]-1 
	WHERE EXISTS (SELECT [tagid] FROM [dnt_topictags] WHERE [tid] = @tid AND [tagid] = [dnt_tags].[tagid])

    DELETE FROM [dnt_topictags] WHERE [tid] = @tid	
END