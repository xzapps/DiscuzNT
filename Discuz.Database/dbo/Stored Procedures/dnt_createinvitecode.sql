
CREATE PROCEDURE [dnt_createinvitecode]
                    @code char(8),
                    @creatorid int,
                    @creator nchar(20),
                    @createtime smalldatetime,
                    @expiretime smalldatetime,
                    @maxcount int,
                    @invitetype int

                    AS
                    
                    INSERT INTO [dnt_invitation]([invitecode],[creatorid],[creator],[createdtime],[expiretime],[maxcount],[invitetype])
                     VALUES(@code,@creatorid,@creator,@createtime,@expiretime,@maxcount,@invitetype);SELECT SCOPE_IDENTITY()