USE [Airbnb_Booking]
GO

/****** Object:  StoredProcedure [dbo].[spPeople_GetByLastName]    Script Date: 18.01.2021 15:10:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[spPeople_GetByLastName]
@LastName nvarchar(200)
as
begin
  select ID, FIRST_NAME, LAST_NAME
	from dbo.USERS
	where LAST_NAME=@LastName;
end
GO

EXEC DBO.spPeople_GetByLastName @LastName='Miller'