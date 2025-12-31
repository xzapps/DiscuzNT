
CREATE PROCEDURE [dnt_createpm]
@pmid int,
@msgfrom nvarchar(20),
@msgto nvarchar(20),
@msgfromid int,
@msgtoid int,
@folder smallint=0,
@new int=0,
@subject nvarchar(60),
@postdatetime datetime,
@message ntext,
@savetosentbox smallint=1
AS

IF @folder<>0
	BEGIN
		SET @msgfrom=@msgto
	END
ELSE
	BEGIN
		UPDATE [dnt_users] SET [newpmcount]=ABS(ISNULL([newpmcount],0)*1)+1,[newpm] = 1 WHERE [uid]=@msgtoid
	END

	

INSERT INTO [dnt_pms] 
	([msgfrom],[msgfromid],[msgto],[msgtoid],[folder],[new],[subject],[postdatetime],[message])
VALUES
	(@msgfrom,@msgfromid,@msgto,@msgtoid,@folder,@new,@subject,@postdatetime,@message)
	
SELECT SCOPE_IDENTITY() AS 'pmid'

IF @savetosentbox=1 AND @folder=0
	BEGIN
		INSERT INTO [dnt_pms]
			([msgfrom],[msgfromid],[msgto],[msgtoid],[folder],[new],[subject],[postdatetime],[message])
		VALUES
			(@msgfrom,@msgfromid,@msgto,@msgtoid,1,@new,@subject,@postdatetime,@message)
	END