SELECT 
    YEAR(OrderDate) AS SalesYear, 
    SUM(TotalDue) AS TotalSales
FROM 
    SalesLT.SalesOrderHeader
GROUP BY 
    YEAR(OrderDate)
ORDER BY 
    SalesYear;

SELECT 
    COUNT(SalesOrderID) AS TotalOrders
FROM 
    SalesLT.SalesOrderHeader;

	SELECT 
    COUNT(CustomerID) AS NumberOfCustomers
FROM 
    SalesLT.Customer;


	SELECT 
    SalesOrderID, 
    DATEDIFF(day, OrderDate, ShipDate) AS FulfillmentTime
FROM 
    SalesLT.SalesOrderHeader
WHERE 
    ShipDate IS NOT NULL;

	SELECT 
    SalesOrderID, 
    OrderDate, 
    DueDate
FROM 
    SalesLT.SalesOrderHeader
WHERE 
    ShipDate IS NULL
ORDER BY 
    DueDate ASC;

	SELECT 
    YEAR(OrderDate) AS SalesYear, 
    MONTH(OrderDate) AS SalesMonth, 
    SUM(TotalDue) AS TotalSales
FROM 
    SalesLT.SalesOrderHeader
GROUP BY 
    YEAR(OrderDate), MONTH(OrderDate)
ORDER BY 
    SalesYear, SalesMonth;

	SELECT 
    ProductID, 
    SUM(LineTotal) AS TotalSales
FROM 
    SalesLT.SalesOrderDetail
GROUP BY 
    ProductID
ORDER BY 
    TotalSales DESC;

	SELECT 
    ProductID, 
    SUM(OrderQty) AS TotalQuantitySold
FROM 
    SalesLT.SalesOrderDetail
GROUP BY 
    ProductID
ORDER BY 
    TotalQuantitySold DESC;

SELECT CustomerID, FirstName, LastName
FROM SalesLT.Customer
WHERE CustomerID IN (SELECT CustomerID 
                     FROM SalesLT.SalesOrderHeader 
                     WHERE OrderDate >= DATEADD(DAY, -7, GETDATE()))

SELECT ProductID, Name, ListPrice
FROM SalesLT.Product
WHERE ListPrice > (SELECT AVG(ListPrice) 
                   FROM SalesLT.Product)

SELECT ProductID, Name, ListPrice, ProductCategoryID
FROM SalesLT.Product
WHERE ListPrice = (SELECT MAX(ListPrice) 
                   FROM SalesLT.Product AS p2 
                   WHERE p2.ProductCategoryID = SalesLT.Product.ProductCategoryID)

SELECT CustomerID, FirstName, LastName, 
       (SELECT COUNT(*) 
        FROM SalesLT.SalesOrderHeader 
        WHERE CustomerID = SalesLT.Customer.CustomerID) AS OrderCount
FROM SalesLT.Customer

SELECT CustomerID, FirstName, LastName
FROM SalesLT.Customer
WHERE CustomerID IN (SELECT so.CustomerID 
                     FROM SalesLT.SalesOrderHeader so
                     WHERE so.SalesOrderID IN 
                         (SELECT sod.SalesOrderID 
                          FROM SalesLT.SalesOrderDetail sod 
                          WHERE sod.ProductID IN 
                              (SELECT p.ProductID 
                               FROM SalesLT.Product p 
                               WHERE p.ProductCategoryID = 12))) -- Example Category ID

SELECT SUM(TotalDue) AS TotalRevenue
FROM SalesLT.SalesOrderHeader
WHERE OrderDate >= DATEADD(MONTH, -1, GETDATE())

SELECT CustomerID, FirstName, LastName
FROM SalesLT.Customer
WHERE CustomerID IN (SELECT CustomerID 
                     FROM SalesLT.SalesOrderHeader 
                     WHERE TotalDue > 1000)

SELECT ProductID, Name
FROM SalesLT.Product
WHERE ProductID NOT IN (SELECT ProductID 
                        FROM SalesLT.SalesOrderDetail)