use carDealership;

-- Query4
SELECT dealershipName,dealerships.dealershipAddress,dealerships.dealershipPhone,inventory.vin
from dealerships
join inventory on dealerships.dealership_ID=inventory.dealership_ID
where inventory.vin LIKE "VIN14";