-- Création de la table des types de produits
CREATE TABLE ProductTypes (
    ProductTypeID INT PRIMARY KEY,
    ProductTypeName VARCHAR(50) NOT NULL UNIQUE
);

-- Création de la table des produits
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    ProductType VARCHAR(50) NOT NULL,
    Price DECIMAL(10,2) NOT NULL CHECK (Price >= 0),
    FOREIGN KEY (ProductType) REFERENCES ProductTypes(ProductTypeName)
);

-- Création de la table des clients
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Phone VARCHAR(20)
);

-- Création de la table des commandes
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    OrderDate DATE NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Création de la table des détails de commande
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL CHECK (Quantity > 0),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Insertion des données dans la table des types de produits
INSERT INTO ProductTypes (ProductTypeID, ProductTypeName) VALUES
(1, 'Widget'),
(2, 'Gadget'),
(3, 'Doohickey');

-- Insertion des données dans la table des produits
INSERT INTO Products (ProductID, ProductName, ProductType, Price) VALUES
(1, 'Widget A', 'Widget', 10.00),
(2, 'Widget B', 'Widget', 15.00),
(3, 'Gadget X', 'Gadget', 20.00),
(4, 'Gadget Y', 'Gadget', 25.00),
(5, 'Doohickey Z', 'Doohickey', 30.00);

-- Insertion des données dans la table des clients
INSERT INTO Customers (CustomerID, CustomerName, Email, Phone) VALUES
(1, 'John Smith', 'john@example.com', '123-456-7890'),
(2, 'Jane Doe', 'jane.doe@example.com', '987-654-3210'),
(3, 'Alice Brown', 'alice.brown@example.com', '456-789-0123');

-- Insertion des données dans la table des commandes
INSERT INTO Orders (OrderID, CustomerID, OrderDate) VALUES
(101, 1, '2024-05-01'),
(102, 2, '2024-05-02'),
(103, 3, '2024-05-01');

-- Insertion des données dans la table des détails de commande
INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity) VALUES
(1, 101, 1, 2),
(2, 101, 3, 1),
(3, 102, 2, 3),
(4, 102, 4, 2),
(5, 103, 5, 1);