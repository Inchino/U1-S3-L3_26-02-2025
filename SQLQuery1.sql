-- Esercizio 1
SELECT COUNT(*) AS Numero_Totale_Ordini
FROM Orders;

-- Esercizio 2
SELECT COUNT(*) AS Numero_Totale_Clienti
FROM Customers;

-- Esercizio 3
SELECT COUNT(*) AS Numero_Clienti_Londra
FROM Customers
WHERE City = 'London';

-- Esercizio 4
SELECT AVG(Freight) AS Media_Costo_Trasporto
FROM Orders;

-- Esercizio 5
SELECT AVG(Freight) AS Media_Costo_Trasporto_BOTTM
FROM Orders
WHERE CustomerID = 'BOTTM';

-- Esercizio 6
SELECT CustomerID, SUM(Freight) AS Totale_Spese_Trasporto
FROM Orders
GROUP BY CustomerID;

-- Esercizio 7
SELECT City, COUNT(*) AS Numero_Clienti
FROM Customers
GROUP BY City;

-- Esercizio 8
SELECT OrderID, SUM(UnitPrice * Quantity) AS Totale_Ordine
FROM [Order Details]
GROUP BY OrderID;

-- Esercizio 9
SELECT OrderID, SUM(UnitPrice * Quantity) AS Totale_Ordine
FROM [Order Details]
WHERE OrderID = 10248
GROUP BY OrderID;

-- Esercizio 10
SELECT CategoryID, COUNT(*) AS Numero_Prodotti
FROM Products
GROUP BY CategoryID;

-- Esercizio 11
SELECT ShipCountry, COUNT(*) AS Numero_Ordini
FROM Orders
GROUP BY ShipCountry;

-- Esercizio 12
SELECT ShipCountry, AVG(Freight) AS Media_Costo_Trasporto
FROM Orders
GROUP BY ShipCountry;