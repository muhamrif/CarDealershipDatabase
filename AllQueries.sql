use carDealership;

-- Query1
SELECT *
from dealerships;

-- Query2
SELECT dealershipName, vehicle_year, vehicle_type, make, model, color,odometer,price,vehicles.sold 
from inventory
inner join dealerships on inventory.dealership_ID = dealerships.dealership_ID
inner join vehicles on inventory.vin = vehicles.vin
where inventory.dealership_ID = 1;

-- Query3
SELECT vin, vehicle_year, vehicle_type, make, model, color,odometer,price,vehicles.sold
from vehicles
where vin LIKE "VIN14";

-- Query4
SELECT dealershipName,dealerships.dealershipAddress,dealerships.dealershipPhone,vehicles.vin, vehicle_year, vehicle_type, make, model, color,odometer,price,vehicles.sold 
from inventory
inner join dealerships on inventory.dealership_ID = dealerships.dealership_ID
inner join vehicles on inventory.vin = vehicles.vin
where inventory.vin LIKE "VIN14";

-- Query5
SELECT dealershipName,dealerships.dealershipAddress,dealerships.dealershipPhone,vehicles.vin, vehicle_year, vehicle_type, make, model, color,odometer,price,vehicles.sold 
from inventory
inner join dealerships on inventory.dealership_ID = dealerships.dealership_ID
inner join vehicles on inventory.vin = vehicles.vin
where vehicles.make LIKE "Honda";

-- Query6
SELECT *
FROM sales_contract
WHERE vin IN (
    SELECT vin
    FROM inventory
    WHERE dealership_ID = (
        SELECT dealership_ID
        FROM dealerships
        WHERE dealershipName = 'City Auto Sales'
    )
)
AND contract_date BETWEEN '2020-01-01' AND '2023-12-31';