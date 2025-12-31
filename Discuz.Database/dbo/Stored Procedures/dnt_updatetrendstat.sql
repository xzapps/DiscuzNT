
CREATE PROC [dnt_updatetrendstat]
@daytime INT,
@login INT,
@register INT,
@topic INT,
@post INT,
@poll INT,
@bonus INT,
@debate INT
AS
BEGIN	
	IF NOT EXISTS(SELECT [daytime] FROM [dnt_trendstat] WHERE [daytime]=@daytime)
		INSERT INTO [dnt_trendstat] ([daytime],[login],[register],[topic],[post]) VALUES(@daytime,0,0,0,0)		
		
		UPDATE [dnt_trendstat] SET [login]=[login]+@login,[register]=[register]+@register,[topic]=[topic]+@topic,[post]=[post]+@post,
			[poll]=[poll]+@poll,[bonus]=[bonus]+@bonus,[debate]=[debate]+@debate WHERE [daytime]=@daytime
END