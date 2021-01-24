use Airbnb_Booking
go


CREATE PROCEDURE dbo.spYoungUsers 
AS 
SELECT * FROM dbo.YoungUsers 
WHERE AGE BETWEEN 20 AND 40


EXEC dbo.spYoungUsers 
