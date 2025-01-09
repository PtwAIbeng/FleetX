CREATE TABLE [Notification].[Notification]
(
		Notification_ID								INT				NOT NULL	IDENTITY(1,1)	PRIMARY KEY CLUSTERED
		, Notification_Type							INT				NOT NULL	DEFAULT(0)	
		, Notification_Message						VARCHAR(MAX)	NOT NULL	DEFAULT('')
		, Notification_Create_Date					DATETIME		NOT NULL	DEFAULT(GETDATE())
		, Notification_Is_Resolved					BIT				NOT NULL	DEFAULT(0)
		, Notification_Vehicle_ID					INT				NOT NULL	FOREIGN KEY REFERENCES Vehicle.Vehicle(Vehicle_ID) ON DELETE CASCADE
		, Notification_Driver_ID					INT				NOT NULL	FOREIGN KEY REFERENCES Driver.Driver(Driver_ID) ON DELETE CASCADE
)
