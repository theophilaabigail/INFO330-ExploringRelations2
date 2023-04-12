-- Which sales agent made the most in sales in 2010?
SELECT e.FirstName || ' ' || e.LastName AS FullName,
       SUM(ii.UnitPrice * ii.Quantity) AS TotalSales
FROM employees e
INNER JOIN customers c ON e.EmployeeId = c.SupportRepId
INNER JOIN invoices i ON c.CustomerId = i.CustomerId
INNER JOIN invoice_items ii ON i.InvoiceId = ii.InvoiceId
WHERE strftime('%Y', i.InvoiceDate) = '2010'
GROUP BY FullName
ORDER BY TotalSales DESC
