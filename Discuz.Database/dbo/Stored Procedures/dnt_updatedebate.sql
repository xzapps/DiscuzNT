
CREATE PROC [dnt_updatedebate]
@tid INT,
@positiveopinion NVARCHAR(200),
@positivediggs INT,
@negativeopinion NVARCHAR(200),
@negativediggs INT,
@terminaltime DATETIME
AS
UPDATE [dnt_debates]
SET [positiveopinion]=@positiveopinion,[negativeopinion]=@negativeopinion,[terminaltime]=@terminaltime,[positivediggs]=@positivediggs,[negativediggs]=@negativediggs
WHERE [tid]=@tid