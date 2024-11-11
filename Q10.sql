SELECT C.CustomerName
FROM Customers C
JOIN Orders O ON C.CustomerID =O.CustomerID
JOIN OrderDetails  OD ON  O.OrderID = OD.OrderID
JOIN Products P ON OD.ProductID=P.ProductID
WHERE P.productType='Widget'
;




/*	Récupérer les noms des clients ayant passé commande pour au moins un widget.	*/