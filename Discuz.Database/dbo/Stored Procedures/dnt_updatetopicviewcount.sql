
CREATE PROCEDURE [dnt_updatetopicviewcount]
@tid int,
@viewcount int
AS
UPDATE [dnt_topics]  SET [views]= [views] + @viewcount WHERE [tid]=@tid