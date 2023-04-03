Count the number of Salesperson whose name begin with ‘a’/’A’.
There is one salesperson whose name begins with 'A'.

SELECT COUNT(*)
FROM SalesPeople
WHERE Sname LIKE 'A%';

Display all the Salesperson whose all orders worth is more than Rs. 2000.
SELECT DISTINCT S.Snum, S.Sname
FROM SalesPeople S
JOIN Orders O ON S.Snum = O.Snum
GROUP BY S.Snum, S.Sname
HAVING SUM(O.Amt) > 2000;

Count the number of Salesperson belonging to Newyork.
SELECT COUNT(*)
FROM SalesPeople
WHERE Snum IN (SELECT Snum FROM Customers WHERE City = 'Newyork');

Display the number of Salespeople belonging to London and belonging to Paris.
SELECT City, COUNT(*) as Num_Salespeople
FROM SalesPeople
WHERE City IN ('London', 'Paris')
GROUP BY City;

Display the number of orders taken by each Salesperson and their date of orders.
SELECT S.Sname, O.Odate, COUNT(*) as Num_Orders
FROM SalesPeople S
JOIN Orders O ON S.Snum = O.Snum
GROUP BY S.Sname, O.Odate;