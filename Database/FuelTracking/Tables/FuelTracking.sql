CREATE TABLE [FuelTracking].[FuelTracking]
(
	Fuel_Tracking_ID								INT					NOT NULL	IDENTITY(1,1)	PRIMARY KEY CLUSTERED
	  , Fuel_Tracking_Date							DATETIME
	  , Fuel_Tracking_Liters						DECIMAL(10, 2)		NOT NULL	DEFAULT('0')
	  , Fuel_Tracking_Cost							MONEY			    NOT NULL	DEFAULT(0)				
	  , Fuel_Tracking_Odometer_Reading				INT					NOT NULL	DEFAULT(0)
	  , Fuel_Tracking_Vehicle_ID					INT					NOT NULL	FOREIGN KEY REFERENCES Vehicle.Vehicle(Vehicle_ID) ON DELETE CASCADE
)
