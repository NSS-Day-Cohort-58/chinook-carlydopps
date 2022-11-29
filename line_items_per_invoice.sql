-- Query that counts the number of line items for each invoice

SELECT 
    invoiceId,
    COUNT(*) as "LinesPerInvoice" 
from InvoiceLine
GROUP BY invoiceId;