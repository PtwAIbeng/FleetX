CREATE TABLE [Trip].[Trip]
(
	Trip_ID								INT					NOT NULL	IDENTITY(1,1)	PRIMARY KEY CLUSTERED
	  , Trip_Start_Location				VARCHAR(255)		NOT NULL	DEFAULT('')
	  , Trip_End_Location				VARCHAR(255)		NOT NULL	DEFAULT('')
	  , Trip_Start_Date					DATETIME
	  ,	Trip_End_Date					DATETIME
	  , Trip_Distance_Traveled			DECIMAL(10,2) -- In Kilometers
	  , Trip_Status						INT
	  , Trip_Vehicle_ID					INT					NOT NULL	FOREIGN KEY REFERENCES Vehicle.Vehicle(Vehicle_ID) ON DELETE CASCADE
	  , Trip_Driver_ID					INT					NOT NULL	FOREIGN KEY REFERENCES Driver.Driver(Driver_ID) ON DELETE CASCADE
)
