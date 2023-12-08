use carDealership;

-- Query3
SELECT vin, vehicle_year, vehicle_type, make, model, color,odometer,price,vehicles.sold
from vehicles
where vin LIKE "VIN14";