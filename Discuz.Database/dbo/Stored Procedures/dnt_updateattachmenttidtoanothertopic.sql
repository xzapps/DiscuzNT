
CREATE PROCEDURE [dnt_updateattachmenttidtoanothertopic]
@tid INT,
@oldtid INT
AS
UPDATE [dnt_attachments] SET [tid]=@tid WHERE [tid]=@oldtid