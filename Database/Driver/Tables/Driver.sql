CREATE TABLE [Driver].[Driver]
(
	Driver_ID								INT				NOT NULL	IDENTITY(1,1)	PRIMARY KEY CLUSTERED
	, Driver_First_Name						VARCHAR(100)	NOT NULL	DEFAULT('')
	, Driver_Last_Name						VARCHAR(100)	NOT NULL	DEFAULT('')
	, Driver_Phone_Number					VARCHAR(50)		NOT NULL	DEFAULT('')
	, Driver_Email							VARCHAR(100)	NOT NULL	DEFAULT('')
	, Driver_License_Number					VARCHAR(50)		NOT NULL	DEFAULT('')
	, Driver_License_Expiration_Date		DATE
	, Driver_Is_Active						BIT				NOT NULL	DEFAULT(0)
	, Driver_Created_By						INT				NOT NULL	DEFAULT(1) -- System in Core.Account table
	, Driver_Create_Date					DATE			NOT NULL	DEFAULT(GETDATE())
	, Driver_Assigned_Vehicle_ID	INT	NOT NULL	FOREIGN KEY REFERENCES Vehicle.Vehicle(Vehicle_ID) ON DELETE CASCADE
)
