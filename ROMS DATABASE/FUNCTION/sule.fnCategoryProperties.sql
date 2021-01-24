-----------
--Hangi property kaç tane kategoride yer alýyor?

Create Function fn_CategoryProperties(@ID int)
Returns int
As
Begin
Declare @count int
Select @count = COUNT(P.ID) From PROPERTIES P
Inner Join CATEGORIES C On P.CATEGORY_ID = C.ID
Where P.ID=@ID
Return @count
End
Select NAME,dbo.fn_CategoryProperties(ID) As PropertyCount From PROPERTIES


