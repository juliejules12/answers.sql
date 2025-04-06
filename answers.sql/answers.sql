-- answers.sql

-- Question 1
-- Total payment amount per payment date, sorted by latest dates, limited to top 5
SELECT 
    paymentDate,
    SUM(amount) AS totalAmount
FROM 
    payments
GROUP BY 
    paymentDate
ORDER BY 
    paymentDate DESC
LIMIT 5;

-- Question 2
-- Average credit limit per customer, grouped by customer name and country
SELECT 
    customerName,
    country,
    AVG(creditLimit) AS averageCreditLimit
FROM 
    customers
GROUP BY 
    customerName, country;

-- Question 3
-- Total price of products ordered, grouped by product code and quantity
-- Total price is calculated as quantityOrdered * priceEach
SELECT 
    productCode,
    quantityOrdered,
    SUM(quantityOrdered * priceEach) AS totalPrice
FROM 
    orderdetails
GROUP BY 
    productCode, quantityOrdered;

-- Question 4
-- Highest payment amount for each check number
SELECT 
    checkNumber,
    MAX(amount) AS highestAmount
FROM 
    payments
GROUP BY 
    checkNumber;
