use carDealership;

-- Query1
SELECT *
from dealerships;

-- Query2
SELECT dealershipName, vehicle_year, vehicle_type, make, model, color,odometer,price,vehicles.sold 
from vehicles
join inventory on vehicles.vin = inventory.vin
join dealerships on inventory.dealership_ID = dealerships.dealership_ID
where inventory.dealership_ID = 1;


-- Query3
SELECT vin, vehicle_year, vehicle_type, make, model, color,odometer,price,vehicles.sold
from vehicles
where vin LIKE "VIN14";

-- Query4
SELECT dealershipName,dealerships.dealershipAddress,dealerships.dealershipPhone,inventory.vin
from dealerships
join inventory on dealerships.dealership_ID=inventory.dealership_ID
where inventory.vin LIKE "VIN14";

-- Query5
SELECT dealershipName,dealerships.dealershipAddress,dealerships.dealershipPhone,vehicles.vin, vehicle_year, vehicle_type, make, model, color,odometer,price,vehicles.sold 
from dealerships
join inventory on dealerships.dealership_ID=inventory.dealership_ID
inner join vehicles on inventory.vin = vehicles.vin
where vehicles.make LIKE "Honda";

-- Query6
SELECT sc.*
FROM sales_contract sc
JOIN inventory inv ON sc.vin = inv.vin
JOIN dealerships d ON inv.dealership_ID = d.dealership_ID
WHERE d.dealershipName = 'City Auto Sales'
    AND sc.contract_date BETWEEN '2020-01-01' AND '2023-12-31';
    
