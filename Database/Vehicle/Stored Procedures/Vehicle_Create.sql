CREATE PROCEDURE [Vehicle].[Vehicle_Create]
(
	 @PlateNumber					VARCHAR(50)
		, @Make							VARCHAR(100)
		, @Model						VARCHAR(100)
		, @Year							INT
		, @Type							INT
		, @Status						BIT
		, @PurchaseDate					Date
		, @Last_Service_Date			Date
		, @CreatedBy					VARCHAR(255)
)
AS
	SET NOCOUNT ON

	INSERT INTO Vehicle.Vehicle
	(
		Vehicle_Plate_Number			
		  , Vehicle_Make				
		  , Vehicle_Model				
		  , Vehicle_Year				
		  , Vehicle_Type				
		  , Vehicle_Status			
		  , Vehicle_Purchase_Date		
		  , Vehicle_Last_Service_Date	
		  , Vehicle_Created_By		
	)
	VALUES
	(
		@PlateNumber			
		  , @Make				
		  , @Model			
		  , @Year				
		  , @Type				
		  , @Status			
		  , @PurchaseDate		
		  , @Last_Service_Date
		  , @CreatedBy		
	)

	SELECT SCOPE_IDENTITY()