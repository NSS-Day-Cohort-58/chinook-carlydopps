-- Query that counts the number of line items for Invoice ID 37

SELECT COUNT(*) as "LinesPerInvoice" from InvoiceLine
WHERE invoiceId = 37;