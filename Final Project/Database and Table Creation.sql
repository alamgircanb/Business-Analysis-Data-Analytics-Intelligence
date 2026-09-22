USE FranchiseSales;
GO

CREATE TABLE DimStore (
    StoreKey INT IDENTITY(1,1) PRIMARY KEY,
    StoreName VARCHAR(50) NOT NULL,
    Province VARCHAR(10) NOT NULL
);

CREATE TABLE DimProduct (
    ProductKey INT IDENTITY(1,1) PRIMARY KEY,
    ProductID_BusinessKey INT NOT NULL,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50) NOT NULL,
    StandardUnitPrice DECIMAL(10,2) NOT NULL
);

CREATE TABLE DimDate (
    DateKey INT PRIMARY KEY,
    FullDate DATE NOT NULL,
    DayNumber INT NOT NULL,
    MonthNumber INT NOT NULL,
    MonthName VARCHAR(20) NOT NULL,
    QuarterNumber INT NOT NULL,
    YearNumber INT NOT NULL
);

CREATE TABLE FactSales (
    SalesKey INT IDENTITY(1,1) PRIMARY KEY,
    TransactionID INT NOT NULL,
    DateKey INT NOT NULL,
    StoreKey INT NOT NULL,
    ProductKey INT NOT NULL,
    UnitPrice DECIMAL(10,2) NOT NULL,
    QuantitySold INT NOT NULL,
    TotalSales DECIMAL(12,2) NOT NULL,
    FOREIGN KEY (DateKey) REFERENCES DimDate(DateKey),
    FOREIGN KEY (StoreKey) REFERENCES DimStore(StoreKey),
    FOREIGN KEY (ProductKey) REFERENCES DimProduct(ProductKey)
);