---Elde edilen toplam kazancý bulma
CREATE PROCEDURE [dbo].[sum_salaries]
 --@sum int OUTPUT
 AS
  BEGIN
    DECLARE @p_sum INTEGER
    DECLARE @p_sal INTEGER
   SET @p_sum = 0
   	 declare cls cursor LOCAL FOR  select PRICE_FOR_STAY from BOOKINGS 
	   OPEN cls
fetch next from cls into @p_sal

while @@FETCH_STATUS = 0
begin

           SET @p_sum = @p_sum + @p_sal;
        FETCH NEXT  FROM cls INTO @p_sal; 
     END 
	 SELECT @p_sal
     CLOSE cls
	 deallocate cls

     --SET @sum = @p_sum
  END

  execute sum_salaries 