
SELECT DISTINCT S.Snum, S.Sname
FROM SalesPeople S
JOIN Orders O ON S.Snum = O.Snum
GROUP BY S.Snum, S.Sname
HAVING SUM(O.Amt) > 2000;

