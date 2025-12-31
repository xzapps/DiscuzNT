
CREATE PROCEDURE [dnt_updatepost1]
	@pid int,
	@title nvarchar(160),
	@message ntext,
	@lastedit nvarchar(50),
	@invisible int,
	@usesig int,
	@htmlon int,
	@smileyoff int,
	@bbcodeoff int,
	@parseurloff int
AS
UPDATE [dnt_posts1] SET 
	[title]=@title,
	[message]=@message,
	[lastedit]=@lastedit,
	[invisible]=@invisible,
	[usesig]=@usesig,
	[htmlon]=@htmlon,
	[smileyoff]=@smileyoff,
	[bbcodeoff]=@bbcodeoff,
	[parseurloff]=@parseurloff WHERE [pid]=@pid