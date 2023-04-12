-- Show the customer's full name, Invoice ID, Date of the invoice and billing country of customers who are from Brazil.
SELECT 
c.FirstName || ' ' || c.LastName AS FullName,
i.InvoiceId,
i.InvoiceDate,
i.BillingCountry
FROM customers c, invoices i
JOIN customers USING (CustomerId)
WHERE c.Country = 'Brazil';

