SELECT C.CustomerName,
	   Count(DISTINCT O.OrderID) as NBCmd
	   
FROM Customers C
JOIN Orders O on C.CUstomerID=O.CustomerID
GROUP BY CustomerName
ORDER BY NBCmd DESC

;


/*	R�cup�rez les noms des clients ayant pass� le plus de commandes, ainsi que le nombre total de commandes pass�es par chaque client.	*/