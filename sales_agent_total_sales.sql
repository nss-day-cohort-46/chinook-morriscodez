SELECT
    e.FirstName || " " || e.LastName as SalesAgent,
    Sum(i.total) as TotalSales
FROM Employee e
JOIN Customer c on c.SupportRepId = e.EmployeeId
JOIN Invoice i on i.CustomerId = c.customerId
GROUP BY EmployeeId

