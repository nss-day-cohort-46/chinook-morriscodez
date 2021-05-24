SELECT 
    i.*,
    Count(InvoiceLineId) as NumberOfLineItems
From Invoice i
JOIN InvoiceLine on invoiceline.invoiceid = i.invoiceid
GROUP BY i.invoiceid