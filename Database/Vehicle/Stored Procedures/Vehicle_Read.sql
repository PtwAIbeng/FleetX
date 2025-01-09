CREATE PROCEDURE [dbo].[Vehicle_Vehicle_Read]
(
	@ID INT
)
AS
	SET NOCOUNT ON

	SELECT * FROM Vehicle.Vehicle
	WHERE Vehicle_ID = @ID
