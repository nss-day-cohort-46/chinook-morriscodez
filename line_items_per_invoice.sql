SELECT 
    InvoiceID,
    Count(InvoiceLineId) as LineItems
FROM InvoiceLine
GROUP BY InvoiceId