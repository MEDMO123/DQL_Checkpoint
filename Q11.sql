

WITH ClientCommandes AS (
    SELECT 
        c.CustomerName,
        pt.ProductTypeName,
        SUM(dc.Quantity * p.Price) as CoutTotal,
        COUNT(DISTINCT pt.ProductTypeID) as nb_types_produits
    FROM Customers c
    INNER JOIN Orders o ON c.CustomerID = o.CustomerID 
    INNER JOIN OrderDetails dc ON o.OrderID = dc.OrderID
    INNER JOIN Products p ON dc.ProductID = p.ProductID
    INNER JOIN ProductTypes pt ON p.ProductType = pt.ProductTypeName
    WHERE pt.ProductTypeName IN ('Widget', 'Gadget')
    GROUP BY c.CustomerName, pt.ProductTypeName
)
SELECT 
    cc.CustomerName,
    SUM(CASE WHEN cc.ProductTypeName = 'Widget' THEN cc.CoutTotal ELSE 0 END) as CoutTotal_widgets,
    SUM(CASE WHEN cc.ProductTypeName = 'Gadget' THEN cc.CoutTotal ELSE 0 END) as CoutTotal_gadgets
FROM ClientCommandes cc
GROUP BY cc.CustomerName
HAVING COUNT(DISTINCT cc.ProductTypeName) = 2;


/*Récupérez les noms des clients ayant passé commande d'au moins un widget et d'au moins un gadget,
ainsi que le coût total des widgets et gadgets commandés par chaque client.	*/ 