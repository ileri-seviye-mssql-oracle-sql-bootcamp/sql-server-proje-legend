--------------------
---Hangi müþteri kaç rezervasyon yaptýrdý?

CREATE FUNCTION fn_Bookings(@ID int)
returns int
as 
begin
declare @booking int
select @booking=COUNT(B.ID) from BOOKINGS B
inner join USERS U on B.USERID=U.ID
where U.ID=@ID
group by U.ID
return @booking
end


select FIRST_NAME,LAST_NAME,dbo.fn_Bookings(ID) from USERS