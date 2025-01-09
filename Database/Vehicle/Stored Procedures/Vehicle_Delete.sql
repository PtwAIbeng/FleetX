CREATE PROCEDURE [Vehicle].[Vehicle_Delete]
(
	@ID INT
)
AS 
	SET NOCOUNT ON

	DELETE FROM Vehicle.Vehicle
	WHERE Vehicle_ID = @ID