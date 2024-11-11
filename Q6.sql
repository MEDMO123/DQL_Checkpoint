SELECT  ProductName ,SUM(OD.Quantity) as toatalCmd
FROM Products P
JOIN OrderDetails OD ON P.ProductID =OD.ProductID
GROUP BY ProductName
;

















/* Récupérez les noms des produits qui ont été commandés par au moins un client, ainsi que la quantité totale de chaque produit commandé. */