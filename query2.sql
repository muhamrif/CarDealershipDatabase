use carDealership;

-- Query2
SELECT dealershipName, vehicle_year, vehicle_type, make, model, color,odometer,price,vehicles.sold 
from vehicles
join inventory on vehicles.vin = inventory.vin
join dealerships on inventory.dealership_ID = dealerships.dealership_ID
where inventory.dealership_ID = 1;




