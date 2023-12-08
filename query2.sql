use carDealership;

-- Query2
SELECT dealershipName, vehicle_year, vehicle_type, make, model, color,odometer,price,vehicles.sold 
from inventory
inner join dealerships on inventory.dealership_ID = dealerships.dealership_ID
inner join vehicles on inventory.vin = vehicles.vin
where inventory.dealership_ID = 1;




