
CREATE PROC [dnt_resetstatistic]
@totaltopic INT,
@totalpost INT,
@totalusers INT,
@lastusername VARCHAR(20),
@lastuserid INT
AS
UPDATE [dnt_statistics] 
SET 
[totaltopic]=@totaltopic,[totalpost]=@totalpost,[totalusers]=@totalusers,[lastusername]=@lastusername,[lastuserid]=@lastuserid