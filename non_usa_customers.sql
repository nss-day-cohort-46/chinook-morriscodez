SELECT CustomerId, FirstName, LastName, Country
FROM Customer
WHERE Country NOT LIKE "%USA%"