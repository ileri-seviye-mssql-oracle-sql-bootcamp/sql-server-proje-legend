CREATE PROCEDURE stpInsertPromoCode
@ID int,
@NAME nvarchar(200),
@DESCRIPTION nvarchar(max),
@CODE varchar(10),
@DISCOUNT float,
@CREATED datetime,
@MODIFIED datetime,
@STATUS tinyint
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO dbo.PROMO_CODES(ID,NAME,DESCRIPTION,CODE,DISCOUNT,CREATED,MODIFIED,STATUS)
		VALUES (20021,'Christmas','Discount for christmas','CHRISTMAS',0.3,18-01.2021,'',1)
END
GO






