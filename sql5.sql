
SELECT City, COUNT(*) as Num_Salespeople
FROM SalesPeople
WHERE City IN ('London', 'Paris')
GROUP BY City;

