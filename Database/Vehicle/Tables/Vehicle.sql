CREATE TABLE [Vehicle].[Vehicle]
(
	Vehicle_ID								INT				NOT NULL	IDENTITY(1,1)	PRIMARY KEY CLUSTERED
	, Vehicle_Plate_Number					VARCHAR(50)		NOT NULL	DEFAULT('')
	, Vehicle_Make							VARCHAR(100)	NOT NULL	DEFAULT('')
	, Vehicle_Model							VARCHAR(100)	NOT NULL	DEFAULT('')
	, Vehicle_Year							INT				NOT NULL	DEFAULT(0)
	, Vehicle_Type							INT				NOT NULL	DEFAULT(0)
	, Vehicle_Status						BIT				NOT NULL	DEFAULT(0)
	, Vehicle_Purchase_Date					DATE			NULL
	, Vehicle_Last_Service_Date				DATE			NULL
	, Vehicle_Created_By					VARCHAR(255)	NOT NULL	DEFAULT('') -- System in Core.Account table
	, Vehicle_Create_Date					DATETIME		NOT NULL DEFAULT(GETDATE())
)