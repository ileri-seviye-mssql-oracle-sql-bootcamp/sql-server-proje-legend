CREATE FUNCTION fn_FindingAvailableLocation(@ulkeAd nvarchar(50),@sehirilkharfi char)
RETURNS TABLE 
AS
RETURN
(SELECT CO.NAME AS COUNTRYNAME,S.NAME AS STATENAME,CI.NAME AS CITYNAME FROM 
COUNTRIES CO LEFT JOIN STATES S 
ON CO.ID=S.COUNTRY_ID
LEFT JOIN CITIES CI 
ON CI.STATE_ID=S.ID WHERE @ulkeAd=CO.NAME and S.NAME LIKE  @sehirilkharfi+'%')


select * from fn_FindingAvailableLocation('Afghanistan','M')---ORNEK1
select * from fn_FindingAvailableLocation('Argentina','S')---ORNEK2---ÖRNEKLER SIRAYLA ÇALIÞTIRILIR