-- Query that shows all Invoices

SELECT 
    i.invoiceId,
    COUNT(il.invoiceId) as "LinesPerInvoice" 
from Invoice i
JOIN InvoiceLine il ON il.invoiceId = i.invoiceId
GROUP BY i.invoiceId;