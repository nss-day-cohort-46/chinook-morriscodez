SELECT
    SalesAgent,
    Max(TotalSales) as OverallMaxSales
FROM (
    SELECT
        e.FirstName || " " || e.LastName as SalesAgent,
        sum(i.total) as TotalSales
    FROM employee e
    JOIN Customer c on c.supportrepid = e.EmployeeId
    JOIN invoice i on i.customerid = c.customerid
)