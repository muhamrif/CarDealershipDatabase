use carDealership;

-- Query6
SELECT sc.*
FROM sales_contract sc
JOIN inventory inv ON sc.vin = inv.vin
JOIN dealerships d ON inv.dealership_ID = d.dealership_ID
WHERE d.dealershipName = 'City Auto Sales'
    AND sc.contract_date BETWEEN '2020-01-01' AND '2023-12-31';