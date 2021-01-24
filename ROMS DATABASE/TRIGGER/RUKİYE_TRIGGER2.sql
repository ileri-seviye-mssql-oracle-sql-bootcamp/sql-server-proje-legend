CREATE TABLE EventsLog
(
EventType VARCHAR(50),
ObjectName VARCHAR(256),
ObjectType VARCHAR(25),
SQLCommand VARCHAR(MAX),
UserName VARCHAR(256)
);

CREATE TRIGGER EventLogCreateBackup
ON DATABASE
FOR CREATE_PROCEDURE, CREATE_TABLE, CREATE_VIEW, CREATE_TRIGGER
AS
BEGIN
SET NOCOUNT ON;
DECLARE @Data XML;
SET @Data = EVENTDATA();
INSERT INTO dbo.EventsLog(EventType, ObjectName, ObjectType,
SQLCommand, UserName)
VALUES(@Data.value('(/EVENT_INSTANCE/EventType)[1]', 'VARCHAR(50)'),
@Data.value('(/EVENT_INSTANCE/ObjectName)[1]', 'VARCHAR(256)'),
@Data.value('(/EVENT_INSTANCE/ObjectType)[1]', 'VARCHAR(25)'),
@Data.value('(/EVENT_INSTANCE/TSQLCommand)[1]', 'VARCHAR(MAX)'),
@Data.value('(/EVENT_INSTANCE/LoginName)[1]','VARCHAR(256)')
);
SET NOCOUNT OFF;
END;

