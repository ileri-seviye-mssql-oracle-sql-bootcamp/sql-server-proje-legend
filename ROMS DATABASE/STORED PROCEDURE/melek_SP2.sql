CREATE PROCEDURE CheckROOMAvailability
    @Created DATETIME,
    @Modified DATETIME,
	@BEDROOMCOUNT INTEGER,
	@bedcount INTEGER
	@bathroom INTEGER

AS

SELECT R.BEDROOM_COUNT,R.BED_COUNT,R.BATHROOM_COUNT, R.CREATED,R.MODIFIED
FROM ROOM_DETAIL AS R
WHERE
(@Created < R.CREATED
    OR
    @Modified > R.MODIFIED)
    AND
    (@BEDROOMCOUNT = R.BEDROOM_COUNT
    OR
    @bedcount = R.BED_COUNT)
   
GO

execute CheckROOMAvailability "2000-01-03  ","2018-11-10  00:00:00.000",1,2,27----ÖRNEK OLARAK















If @NewStatus  = 'InOffice' 
BEGIN
     Update tblEmployee set InOffice = -1 where EmpID = @EmpID
END
Else If @NewStatus  = 'OutOffice'
BEGIN
    Update tblEmployee set InOffice = -1 where EmpID = @EmpID
END
Else If @NewStatus  = 'Home'
BEGIN
    Update tblEmployee set Home = -1 where EmpID = @EmpID
END