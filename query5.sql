use carDealership;

-- Query5
SELECT dealershipName,dealerships.dealershipAddress,dealerships.dealershipPhone,vehicles.vin, vehicle_year, vehicle_type, make, model, color,odometer,price,vehicles.sold 
from dealerships
join inventory on dealerships.dealership_ID=inventory.dealership_ID
inner join vehicles on inventory.vin = vehicles.vin
where vehicles.make LIKE "Honda";