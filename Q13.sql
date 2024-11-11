SELECT c.CustomerName,pt.ProductTypeName,
	   SUM(dc.Quantity*p.Price) as TotalCmd
	  
FROM Customers c
 INNER JOIN Orders o ON c.CustomerID = o.CustomerID 
    INNER JOIN OrderDetails dc ON o.OrderID = dc.OrderID
    INNER JOIN Products p ON dc.ProductID = p.ProductID
    INNER JOIN ProductTypes pt ON p.ProductType = pt.ProductTypeName
    WHERE pt.ProductTypeName ='Doohickey' 
    GROUP BY c.CustomerName, pt.ProductTypeName
--	Having  COUNT(DISTINCT o.OrderID) >=1


;





/*	Récupérez les noms des clients ayant passé commande d'au moins un bidule, 
ainsi que le coût total des bidules commandés par chaque client.	*/