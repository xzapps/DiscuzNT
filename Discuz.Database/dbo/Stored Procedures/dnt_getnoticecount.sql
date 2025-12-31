
CREATE PROCEDURE [dnt_getnoticecount]
@userid int,
@type int = -1,
@state int=-1
AS

	IF @type = -1
		BEGIN
			IF @state = -1
				BEGIN
					SELECT COUNT(nid) AS [pmcount] FROM [dnt_notices] WHERE [uid]=@userid
				END
			ELSE
				BEGIN
					SELECT COUNT(nid) AS [pmcount] FROM [dnt_notices] WHERE [uid]=@userid AND [new]=@state
				END
		END
	ELSE
		BEGIN
			IF @state = -1
				BEGIN
					SELECT COUNT(nid) AS [pmcount] FROM [dnt_notices] WHERE [uid]=@userid AND [type]=@type
				END
			ELSE
				BEGIN
					SELECT COUNT(nid) AS [pmcount] FROM [dnt_notices] WHERE [uid]=@userid AND [new]=@state AND [type]=@type
				END
		END