SELECT C.CustomerName,
	   COUNT(DISTINCT O.OrderID) AS TotalCmd,
	   COUNT(DISTINCT DATEPART(dw,O.OrderDate)) as JoursDifferent /*dw retourne un nombre de 1 � 7 repr�sentant le jour de la semaine*/
FROM Customers C
JOIN Orders O ON C.CustomerID= O.CustomerID
GROUP BY C.CustomerName
HAVING COUNT(DISTINCT DATEPART(dw,O.OrderDate))=7

;








/*	R�cup�rez les noms des clients qui ont pass� une commande chaque jour de la semaine, 
ainsi que le nombre total de commandes pass�es par chaque client.	*/