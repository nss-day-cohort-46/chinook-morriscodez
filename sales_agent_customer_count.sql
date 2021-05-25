SELECT
    e.FirstName || " " || e.LastName as SalesAgent,
    COUNT(c.customerId) as AssignedCustomers
FROM Employee e
JOIN Customer c ON c.supportrepid = e.employeeid
GROUP BY e.EmployeeId