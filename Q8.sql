SELECT C.CustomerName,
	   Count(DISTINCT O.OrderID) as NBCmd
	   
FROM Customers C
JOIN Orders O on C.CUstomerID=O.CustomerID
GROUP BY CustomerName
ORDER BY NBCmd DESC

;


/*	Récupérez les noms des clients ayant passé le plus de commandes, ainsi que le nombre total de commandes passées par chaque client.	*/