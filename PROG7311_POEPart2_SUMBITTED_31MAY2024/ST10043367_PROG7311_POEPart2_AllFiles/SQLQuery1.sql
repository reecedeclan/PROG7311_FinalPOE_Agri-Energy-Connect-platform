CREATE DATABASE PROG7311_ST10043367_POEPart2;

USE PROG7311_ST10043367_POEPart2;

CREATE TABLE Roles (
    RoleID INT PRIMARY KEY IDENTITY(1,1),
    RoleName VARCHAR(50) NOT NULL
);

INSERT INTO Roles (RoleName) VALUES ('Farmer'), ('Employee');

CREATE TABLE Users (
    UserID INT PRIMARY KEY IDENTITY(1,1),
    Username VARCHAR(50) NOT NULL UNIQUE,
    PasswordHash VARCHAR(255) NOT NULL,
    RoleID INT,
    FOREIGN KEY (RoleID) REFERENCES Roles(RoleID)
);

CREATE TABLE Farmers (
    FarmerID INT PRIMARY KEY IDENTITY(1,1),
    UserID INT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Phone VARCHAR(20),
    Address VARCHAR(255),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    FarmerName  VARCHAR(100) NOT NULL,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    ProductionDate DATE,
);


SELECT * FROM Roles;
SELECT * FROM Users;
SELECT * FROM Farmers;
SELECT * FROM Products;


drop table roles;
DROP TABLE Users;
DROP TABLE Farmers;
DROP TABLE Products;

DROP DATABASE PROG7311_ST10043367_POEPart2;