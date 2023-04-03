
SELECT COUNT(*)
FROM SalesPeople
WHERE Snum IN (SELECT Snum FROM Customers WHERE City = 'Newyork');

