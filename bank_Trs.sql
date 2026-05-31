# Total Transactions
SELECT COUNT(*) AS total_transactions
FROM transactions;

# Successful Transactions
SELECT COUNT(*) AS successful_transactions
FROM transactions
WHERE status='SUCCESS';

# Failed Transactions
SELECT COUNT(*) AS failed_transactions
FROM transactions
WHERE status='FAILED';

# Total Revenue
SELECT SUM(amount) AS total_revenue
FROM transactions
WHERE status='SUCCESS';

# Refund Transactions
SELECT *
FROM transactions
WHERE status='REFUND';

# Top Customers
SELECT customer_id,
SUM(amount) AS total_amount
FROM transactions
GROUP BY customer_id
ORDER BY total_amount DESC;

# Transaction Type Analysis
SELECT transaction_type,
COUNT(*) AS total_count
FROM transactions
GROUP BY transaction_type;