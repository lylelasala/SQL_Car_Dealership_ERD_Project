CREATE TABLE Salesperson (
    SalespersonID INT PRIMARY KEY,
    Name VARCHAR(255)
);

CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(255)
);

CREATE TABLE Car (
    CarID INT PRIMARY KEY,
    Make VARCHAR(255),
    Model VARCHAR(255),
    Year INT,
    SerialNumber VARCHAR(255)
);

CREATE TABLE Invoice (
    InvoiceID INT PRIMARY KEY,
    SalespersonID INT,
    CustomerID INT,
    CarID INT,
    Date DATE,
    FOREIGN KEY (SalespersonID) REFERENCES Salesperson(SalespersonID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (CarID) REFERENCES Car(CarID)
);

CREATE TABLE ServiceTicket (
    TicketID INT PRIMARY KEY,
    CarID INT,
    Date DATE,
    FOREIGN KEY (CarID) REFERENCES Car(CarID)
);

CREATE TABLE ServiceHistory (
    RecordID INT PRIMARY KEY,
    CarID INT,
    ServiceDate DATE,
    Description TEXT,
    FOREIGN KEY (CarID) REFERENCES Car(CarID)
);

CREATE TABLE Mechanic (
    MechanicID INT PRIMARY KEY,
    Name VARCHAR(255)
);

CREATE TABLE ServiceParts (
    PartID INT PRIMARY KEY,
    Description TEXT
);

CREATE TABLE CarServiceParts (
    CarID INT,
    PartID INT,
    PRIMARY KEY (CarID, PartID),
    FOREIGN KEY (CarID) REFERENCES Car(CarID),
    FOREIGN KEY (PartID) REFERENCES ServiceParts(PartID)
);
