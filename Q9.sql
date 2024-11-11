SELECT P.ProductName,
	   COUNT(OD.orderID) as  NBCmd,
	   SUM(OD.Quantity) as TotalQteCmd
FROM Products P
JOIN OrderDetails OD on P.ProductID = OD.ProductID
GROUP BY P.ProductName
ORDER BY TotalQteCmd DESC
;










/*	R�cup�rez les noms des produits les plus command�s, ainsi que la quantit� totale de chaque produit command�.	*/