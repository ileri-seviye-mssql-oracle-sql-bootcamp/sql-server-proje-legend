CREATE PROCEDURE SalesTarget
@TotalSales INT
AS

BEGIN
    DECLARE @sales INT;

    SELECT 
        @sales = SUM(AMOUNT_PAID * IS_REFUND)
    FROM
        BOOKINGS
    WHERE
        YEAR(BOOKING_DATE) = 2017;

    SELECT @sales;

    IF @sales > 5000
    BEGIN
        PRINT 'Great! The sales amount in 2018 is greater than 5000';
    END
    ELSE
    BEGIN
        PRINT 'Sales amount in 2017 did not reach 5000';
    END
END

EXEC SalesTarget @TotalSales = 5000



