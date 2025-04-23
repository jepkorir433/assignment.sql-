-- 14. Run Question 1 Solution
SELECT 
    e.firstName, 
    e.lastName, 
    e.email, 
    e.officeCode,
    o.city AS officeCity
FROM 
    employees e
INNER JOIN 
    offices o ON e.officeCode = o.officeCode
ORDER BY 
    e.lastName;

-- 15. Run Question 2 Solution
SELECT 
    p.productName, 
    p.productVendor, 
    p.productLine,
    pl.textDescription
FROM 
    products p
LEFT JOIN 
    productlines pl ON p.productLine = pl.productLine;

-- 16. Run Question 3 Solution
SELECT 
    o.orderDate, 
    o.shippedDate, 
    o.status, 
    o.customerNumber,
    c.customerName
FROM 
    orders o
RIGHT JOIN 
    customers c ON o.customerNumber = c.customerNumber
LIMIT 10;