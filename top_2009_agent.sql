SELECT
    EmployeeName,
    Max(TotalSales) as MaxSales
FROM (select sum(i.total) as TotalSales,
        e.FirstName || " " || e.LastName as EmployeeName
        FROM employee e
        JOIN Customer c on c.supportrepid = e.EmployeeId
        JOIN Invoice i on i.customerid = c.customerid
        WHERE i.InvoiceDate LIKE "%2009%"
        GROUP BY e.EmployeeId)

