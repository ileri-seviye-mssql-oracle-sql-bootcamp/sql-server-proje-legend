USE Airbnb_Booking
GO
CREATE PROCEDURE dbo.sp_amenities_availability
@NAME nvarchar(200) 
AS
SELECT A.NAME, P.ID, P.STATUS, PR.ADDRESS_ID, PR.DESCRIPTION, PR.PRICE, C.NAME FROM AMENTIES A
JOIN PROPERTY_AMENITIES P ON A.ID=P.AMENITY_ID
JOIN PROPERTIES PR ON PR.ID=P.PROPERTY_ID
JOIN COUNTRIES C ON C.ID=PR.COUNTRY_ID
WHERE A.NAME LIKE '%' + @NAME + '%'
GO

exec dbo.sp_amenities_availability @NAME = 'Internet'
