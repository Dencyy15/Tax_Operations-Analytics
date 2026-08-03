--total clients
SELECT COUNT(*) AS Total_Clients
FROM tax_operations;

--total revenue collected
SELECT
    SUM(fees_paid) AS Total_Revenue
FROM tax_operations;


--total outstanding fees
SELECT
    SUM(fees_paid) AS Total_Revenue
FROM tax_operations;


--average revenue per client
SELECT
ROUND(AVG(fees_paid),2) AS Avg_Revenue_Per_Client
FROM tax_operations;


--total refund amount
SELECT
SUM(refund_amount) AS Total_Refund
FROM tax_operations;


--filing status
SELECT
filing_status,
COUNT(*) AS Clients
FROM tax_operations
GROUP BY filing_status
ORDER BY Clients DESC;


--Payment Status
SELECT
payment_status,
COUNT(*) AS Clients
FROM tax_operations
GROUP BY payment_status
ORDER BY Clients DESC;


--Verification status
SELECT
verification_status,
COUNT(*) AS Clients
FROM tax_operations
GROUP BY verification_status
ORDER BY Clients DESC;



--refund status
SELECT
refund_status,
COUNT(*) AS Clients
FROM tax_operations
GROUP BY refund_status;


--which acc manager has the most clients
SELECT
account_manager,
COUNT(*) AS Total_Clients
FROM tax_operations
GROUP BY account_manager
ORDER BY Total_Clients DESC;


--which member generate the huighest revenue
SELECT
account_manager,
SUM(fees_paid) AS Revenue
FROM tax_operations
GROUP BY account_manager
ORDER BY Revenue DESC;


--which manager has the highest pending collections
SELECT
account_manager,
SUM(outstanding_fees) AS Outstanding
FROM tax_operations
GROUP BY account_manager
ORDER BY Outstanding DESC;


--occupation with largest client base
SELECT
occupation,
COUNT(*) AS Clients
FROM tax_operations
GROUP BY occupation
ORDER BY Clients DESC;



--which state contributes the most clients
SELECT
state,
COUNT(*) AS Clients
FROM tax_operations
GROUP BY state
ORDER BY Clients DESC;


--files returned