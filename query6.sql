use carDealership;

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