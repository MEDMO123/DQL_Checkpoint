SELECT C.CustomerName,
	   COUNT(DISTINCT O.OrderID) AS TotalCmd,
	   COUNT(DISTINCT DATEPART(dw,O.OrderDate)) as JoursDifferent /*dw retourne un nombre de 1 à 7 représentant le jour de la semaine*/
FROM Customers C
JOIN Orders O ON C.CustomerID= O.CustomerID
GROUP BY C.CustomerName
HAVING COUNT(DISTINCT DATEPART(dw,O.OrderDate))=7

;








/*	Récupérez les noms des clients qui ont passé une commande chaque jour de la semaine, 
ainsi que le nombre total de commandes passées par chaque client.	*/