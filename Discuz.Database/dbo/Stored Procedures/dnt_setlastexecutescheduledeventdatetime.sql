
CREATE PROCEDURE [dnt_setlastexecutescheduledeventdatetime]
(
	@key VARCHAR(100),
	@servername VARCHAR(100),
	@lastexecuted DATETIME
)
AS
DELETE FROM [dnt_scheduledevents] WHERE ([key]=@key) AND ([lastexecuted] < DATEADD([day], - 7, GETDATE()))

INSERT [dnt_scheduledevents] ([key], [servername], [lastexecuted]) Values (@key, @servername, @lastexecuted)