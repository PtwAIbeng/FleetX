CREATE PROCEDURE [Vehicle].[Vehicle_Update]
(
	@ID								INT
	, @PlateNumber					VARCHAR(50)
	, @Make							VARCHAR(100)
	, @Model						VARCHAR(100)
	, @Year							INT
	, @Type							INT
	, @Status						BIT
	, @PurchaseDate					Date
	, @Last_Service_Date			Date
	, @CreatedBy					VARCHAR(255)
	, @CreateDate					DATETIME
)
AS 
	SET NOCOUNT ON

	UPDATE Vehicle.Vehicle
	SET  Vehicle_Plate_Number				=  @PlateNumber		
			, Vehicle_Make					=  @Make				
			, Vehicle_Model					=  @Model			
			, Vehicle_Year					=  @Year				
			, Vehicle_Type					=  @Type				
			, Vehicle_Status				=  @Status			
			, Vehicle_Purchase_Date			=  @PurchaseDate		
			, Vehicle_Last_Service_Date		=  @Last_Service_Date
			, Vehicle_Created_By			=  @CreatedBy		
			, Vehicle_Create_Date			=  @CreateDate	

	WHERE	Vehicle_ID						=  @ID