
CREATE PROCEDURE [dnt_getpmcount]
@userid int,
@folder int=0,
@state int=-1
AS

IF @folder=-1
	BEGIN
	  SELECT COUNT(pmid) AS [pmcount] FROM [dnt_pms] WHERE ([msgtoid] = @userid AND [folder]=0) OR ([msgfromid] = @userid AND [folder] = 1) OR ([msgfromid] = @userid AND [folder] = 2)
	END
ELSE
    BEGIN
		IF @folder=0
			BEGIN
				IF @state=-1
					BEGIN
						SELECT COUNT(pmid) AS [pmcount] FROM [dnt_pms] WHERE [msgtoid] = @userid AND [folder] = @folder
					END
				ELSE IF @state=2
					BEGIN
						SELECT COUNT(pmid) AS [pmcount] FROM [dnt_pms] WHERE [msgtoid] = @userid AND [folder] = @folder AND [new]=1 AND GETDATE()-[postdatetime]<3
					END
				ELSE
					BEGIN
						SELECT COUNT(pmid) AS [pmcount] FROM [dnt_pms] WHERE [msgtoid] = @userid AND [folder] = @folder AND [new] = @state
					END
			END
		ELSE
			BEGIN
				IF @state=-1
					BEGIN
						SELECT COUNT(pmid) AS [pmcount] FROM [dnt_pms] WHERE [msgfromid] = @userid AND [folder] = @folder
					END
				ELSE IF @state=2
					BEGIN
						SELECT COUNT(pmid) AS [pmcount] FROM [dnt_pms] WHERE [msgfromid] = @userid AND [folder] = @folder AND [new]=1 AND GETDATE()-[postdatetime]<3
					END
				ELSE
					BEGIN
						SELECT COUNT(pmid) AS [pmcount] FROM [dnt_pms] WHERE [msgfromid] = @userid AND [folder] = @folder AND [new] = @state
					END
			END
	END