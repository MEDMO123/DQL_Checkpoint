SELECT  ProductName ,SUM(OD.Quantity) as toatalCmd
FROM Products P
JOIN OrderDetails OD ON P.ProductID =OD.ProductID
GROUP BY ProductName
;

















/* R�cup�rez les noms des produits qui ont �t� command�s par au moins un client, ainsi que la quantit� totale de chaque produit command�. */