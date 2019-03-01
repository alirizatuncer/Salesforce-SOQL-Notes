SELECT
s.SubscriberKey
, c.EMAIL_ADDRESS AS EmailAddress
, cp.COMMERCIALNEWS_STATUS AS COMMERCIALNEWS_STATUS
, cp.PRODUCTTIPSTRICKS_STATUS AS PRODUCTTIPSTRICKS_STATUS
, cp.SOFTWAREUPDATES_STATUS AS SOFTWAREUPDATES_STATUS
, cp.CRITICALUPDATES_STATUS AS CRITICALUPDATES_STATUS
FROM (
SELECT
s.SubscriberKey FROM BEIJING_WAVE_1 AS s
) AS s
INNER JOIN CONTACTS AS c
ON c.CUSTOMER_ID = s.SubscriberKey
INNER JOIN CUSTOMER_PREFERENCES AS cp
ON cp.CUSTOMER_ID = c.CUSTOMER_ID
WHERE
cp.COMMERCIALNEWS_STATUS = 'False' 
AND cp.PRODUCTTIPSTRICKS_STATUS = 'False' 
AND cp.SOFTWAREUPDATES_STATUS = 'False' 
AND cp.CRITICALUPDATES_STATUS = 'False'
