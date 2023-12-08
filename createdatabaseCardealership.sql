# ---------------------------------------------------------------------- #
# Target DBMS:           MySQL                                           #
# Project name:          muhamrifDealership                              #
# ---------------------------------------------------------------------- #
DROP DATABASE IF EXISTS carDealership;

CREATE DATABASE IF NOT EXISTS carDealership;

USE carDealership;

# ---------------------------------------------------------------------- #
# Tables                                                                 #
# ---------------------------------------------------------------------- #
# ---------------------------------------------------------------------- #
# Add table "dealerships"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE dealerships (
    dealership_ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    dealershipName VARCHAR(50) NOT NULL,
    dealershipAddress varchar(50),
    dealershipPhone VARCHAR(12)
);

# ---------------------------------------------------------------------- #
# Add table "vehicles"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE vehicles (
    vin VARCHAR(5) NOT NULL PRIMARY KEY,
    vehicle_year int,
    make VARCHAR(30),
    model VARCHAR(30),
    vehicle_type VARCHAR(30),
    color VARCHAR(30),
    odometer int,
    price float,
    sold BOOLEAN 
);

# ---------------------------------------------------------------------- #
# Add table "inventory"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE inventory (
    dealership_ID INTEGER,
    vin VARCHAR(5),
    FOREIGN KEY (dealership_ID) REFERENCES dealerships(dealership_ID),
    FOREIGN KEY (vin) REFERENCES vehicles(vin)
);

# ---------------------------------------------------------------------- #
# Add table "sales_contract"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE sales_contract (
	contract_ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    contract_date date,
    customer_name VARCHAR(30),
	customer_email VARCHAR(30), 
    sales_tax float,
    
    vin VARCHAR(5),
    FOREIGN KEY (vin) REFERENCES vehicles(vin)
);

# ---------------------------------------------------------------------- #
# Add table "lease_contract"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE lease_contract (
	contract_ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    contract_date date,
    customer_name VARCHAR(30),
	customer_email VARCHAR(30), 
    vin VARCHAR(5),
    FOREIGN KEY (vin) REFERENCES vehicles(vin)
);

INSERT INTO dealerships (dealershipName, dealershipAddress, dealershipPhone) VALUES
    ('Sunset Motors', '789 Sunset Blvd', '555-1111'),
    ('City Auto Sales', '456 Park Ave', '555-2222'),
    ('Ocean Drive Cars', '101 Ocean Dr', '555-3333'),
    ('Greenfield Motors', '234 Meadow Ln', '555-4444');


INSERT INTO vehicles (vin, vehicle_year, make, model, vehicle_type, color, odometer, price, sold) VALUES
    ('VIN07', 2021, 'Ford', 'Fusion', 'Sedan', 'Silver', 20000, 28000.00, FALSE),
    ('VIN08', 2020, 'Chevrolet', 'Equinox', 'SUV', 'Blue', 18000, 30000.00, TRUE),
    ('VIN09', 2022, 'Honda', 'Accord', 'Sedan', 'Black', 15000, 26000.00, FALSE),
    ('VIN10', 2023, 'Jeep', 'Cherokee', 'SUV', 'Red', 12000, 32000.00, TRUE),
    ('VIN11', 2020, 'Toyota', 'Highlander', 'SUV', 'White', 25000, 35000.00, TRUE),
    ('VIN12', 2022, 'Nissan', 'Murano', 'SUV', 'Gray', 18000, 31000.00, FALSE),
    ('VIN13', 2021, 'Ford', 'Explorer', 'SUV', 'Green', 22000, 33000.00, TRUE),
    ('VIN14', 2023, 'Chevrolet', 'Camaro', 'Coupe', 'Yellow', 8000, 42000.00, FALSE),
    ('VIN15', 2022, 'Honda', 'Pilot', 'SUV', 'Brown', 16000, 34000.00, TRUE),
    ('VIN16', 2021, 'Toyota', 'Corolla', 'Sedan', 'Purple', 19000, 27000.00, FALSE);


INSERT INTO inventory (dealership_ID, vin) VALUES
    (4, "VIN07"),
    (3, 'VIN08'),
    (3, 'VIN09'),
    (3, 'VIN10'),
    (2, 'VIN11'),
    (2, 'VIN12'),
    (2, 'VIN13'),
    (1, 'VIN14'),
    (1, 'VIN15'),
    (1, 'VIN16');

INSERT INTO sales_contract (contract_date, customer_name, customer_email, sales_tax, vin) VALUES
    ('2023-09-15', 'Sophia Johnson', 'sophia.johnson@example.com', 0.08, 'VIN08'),
    ('2023-10-20', 'Matthew Turner', 'matthew.turner@example.com', 0.07, 'VIN10'),
    ('2023-11-10', 'Ava White', 'ava.white@example.com', 0.09, 'VIN12'),
    ('2023-12-05', 'William Carter', 'william.carter@example.com', 0.06, 'VIN15'),
    ('2024-01-15', 'Olivia Martin', 'olivia.martin@example.com', 0.08, 'VIN16'),
    ('2024-02-20', 'Noah Adams', 'noah.adams@example.com', 0.07, 'VIN09'),
    ('2024-03-10', 'Emma Harris', 'emma.harris@example.com', 0.09, 'VIN11'),
    ('2024-04-05', 'Liam Wilson', 'liam.wilson@example.com', 0.06, 'VIN13'),
    ('2024-05-15', 'Isabella Davis', 'isabella.davis@example.com', 0.08, 'VIN14'),
    ('2024-06-20', 'James Taylor', 'james.taylor@example.com', 0.07, 'VIN08');

INSERT INTO lease_contract (contract_date, customer_name, customer_email, vin) VALUES
    ('2024-07-10', 'Ethan Lewis', 'ethan.lewis@example.com', 'VIN07'),
    ('2024-08-05', 'Aria Clark', 'aria.clark@example.com', 'VIN10'),
    ('2024-09-15', 'Logan Hall', 'logan.hall@example.com', 'VIN12'),
    ('2024-10-20', 'Mia Turner', 'mia.turner@example.com', 'VIN15'),
    ('2024-11-10', 'Lucas Adams', 'lucas.adams@example.com', 'VIN16'),
    ('2024-12-05', 'Amelia Parker', 'amelia.parker@example.com', 'VIN09'),
    ('2025-01-15', 'Jackson Miller', 'jackson.miller@example.com', 'VIN11'),
    ('2025-02-20', 'Ava Harris', 'ava.harris@example.com', 'VIN13'),
    ('2025-03-10', 'Elijah Wilson', 'elijah.wilson@example.com', 'VIN14'),
    ('2025-04-05', 'Sophia Davis', 'sophia.davis@example.com', 'VIN08');





