SELECT 
    i.total,
    (c.FirstName + c.LastName) as c.Name,
    c.country,
    e.name
FROM Invoice i
JOIN customer c ON c.CustomerId = i.CustomerId
JOIN employee e ON e.EmployeeId = c.salesRepId
GROUP BY InvoiceId