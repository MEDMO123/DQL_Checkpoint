SELECT C.CustomerName,
	   COUNT(DISTINCT O.OrderID) AS TotalCmd,
	   COUNT(DISTINCT DATEPART(dw,O.OrderDate)) as JoursDifferent /*dw retourne un nombre de 1 � 7 repr�sentant le jour de la semaine*/
FROM Customers C
JOIN Orders O ON C.CustomerID= O.CustomerID
GROUP BY C.CustomerName
HAVING COUNT(DISTINCT DATEPART(dw,O.OrderDate))=7

;


