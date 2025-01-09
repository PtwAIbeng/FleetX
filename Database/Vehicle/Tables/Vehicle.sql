CREATE TABLE [Vehicle].[Vehicle]
(
	Vehicle_ID								INT				NOT NULL	IDENTITY(1,1)	PRIMARY KEY CLUSTERED
	, Vehicle_Plate_Number					VARCHAR(50)		NOT NULL	DEFAULT('')
	, Vehicle_Make							VARCHAR(100)	NOT NULL	DEFAULT('')
	, Vehicle_Model							VARCHAR(100)	NOT NULL	DEFAULT('')
	, Vehicle_Year							INT
	, Vehicle_Type							INT
	, Vehicle_Status						BIT
	, Vehicle_Purchase_Date					DATE
	, Vehicle_Last_Service_Date				DATE
	, Vehicle_Created_By					VARCHAR(255)	NOT NULL	DEFAULT('') -- System in Core.Account table
	, Vehicle_Create_Date					DATETIME		NOT NULL DEFAULT(GETDATE())
)