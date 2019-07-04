SELECT
b.[first name],
b.[last name],
b.[age],
a.[Status] as 'Subscription Status',
a.[EmailAddress] as 'Email'
FROM
OrderDetails a
INNER JOIN
TestART
ON
a.subscribersID = b.subscribersID
