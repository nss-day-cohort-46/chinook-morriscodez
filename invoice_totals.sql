SELECT
    InvoiceId,
    Total,
    BillingCountry,
    customer.FirstName || " " || customer.Lastname as "CustomerName",
    employee.FirstName || " " || employee.LastName as "EmployeeName"
FROM Invoice
JOIN customer ON invoice.customerId = customer.CustomerId
JOIN employee ON employee.employeeId = customer.supportRepId
Order By CustomerName