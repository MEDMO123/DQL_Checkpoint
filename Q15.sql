SELECT c.CustomerName,
	   SUM(CASE WHEN pt.ProductTypeName='Gadget' THEN dc.Quantity  ELSE 0 END) as NbTotalCmd_Gadget,
	  SUM(CASE WHEN pt.ProductTypeName='Widget' THEN dc.Quantity  ELSE 0 END) as NbTotalCmd_Widget,
	  -- SUM(CASE WHEN pt.ProductTypeName='Gadget' THEN dc.Quantity  ELSE dc.Quantity END) as NbTotalCmd,
	   SUM(dc.Quantity*p.Price) as CoutTotalCmd
	  
FROM Customers c
	INNER JOIN Orders o ON c.CustomerID = o.CustomerID 
    INNER JOIN OrderDetails dc ON o.OrderID = dc.OrderID
    INNER JOIN Products p ON dc.ProductID = p.ProductID
    INNER JOIN ProductTypes pt ON p.ProductType = pt.ProductTypeName
    WHERE pt.ProductTypeName IN ('Gadget','Widget') 
	GROUP BY c.CustomerName

;




/*	Récupérez le nombre total de widgets et de gadgets commandés par chaque client, ainsi que le coût total des commandes.	*/