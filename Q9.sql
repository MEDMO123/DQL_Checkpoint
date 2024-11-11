SELECT P.ProductName,
	   COUNT(OD.orderID) as  NBCmd,
	   SUM(OD.Quantity) as TotalQteCmd
FROM Products P
JOIN OrderDetails OD on P.ProductID = OD.ProductID
GROUP BY P.ProductName
ORDER BY TotalQteCmd DESC
;










/*	Récupérez les noms des produits les plus commandés, ainsi que la quantité totale de chaque produit commandé.	*/