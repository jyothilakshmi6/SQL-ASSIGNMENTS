
SELECT S.Sname, O.Odate, COUNT(*) as Num_Orders
FROM SalesPeople S
JOIN Orders O ON S.Snum = O.Snum
GROUP BY S.Sname, O.Odate;