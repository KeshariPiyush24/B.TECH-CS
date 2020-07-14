CREATE TABLE ITEM
(
    ItemId VARCHAR(6) PRIMARY KEY,
    ItemName VARCHAR(30) NOT NULL,
    QtyOnHand FLOAT(3) /*Should be greater than ReOrderLevel*/,
    UnitPrice FLOAT(6,2) CHECK(UnitPrice > 0),
    Class CHAR(1),
);

-- INCOMPLETE