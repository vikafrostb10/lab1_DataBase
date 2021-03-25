--1. Command to merger productId in a table orderDetail with product name
SELECT orderDetail.orderDetailId, orderDetail.productId, Product.name
FROM Product
INNER JOIN orderDetail ON orderDetail.productId = Product.name 
ORDER BY orderDetail.orderDetailId; 

--2. Customer with received discount
SELECT Customer.name, Payment.discount
FROM Customer
FULL OUTER JOIN Payment ON Customer.customerID=Payment.customerID
ORDER BY Payment.discount;

--3. Create view of super vip clients where discout is 15% (the hightest discount)
CREATE VIEW super_vip_clients AS
SELECT Payment.customerId, Payment.discount  FROM Payment
WHERE discount = 15;

--4. Union of 2 tables
SELECT price FROM orderDetail
UNION
SELECT price FROM Product
ORDER BY price;

--5. Find customers with the hightest discount
SELECT customerId, MAX(discount) FROM Payment;

--6. Merge name from Customer table with discount less than 5% grouped by Customer Id
SELECT customerId, name FROM Customer WHERE
name in (SELECT customerId FROM Payment WHERE discount < 5)
GROUP BY customerId;

--7 selects all orders with customer and price of each complained order information
SELECT orderr.orderId, customer.name, Payment.price
FROM ((orderr
INNER JOIN Customers ON orderr.customerId = customer.customerId)
INNER JOIN Payment ON orderr.orderId = Payment.customerId);

--8 lists the Product Name if it finds ANY records in the orderDetail table has amount more than 4 
SELECT name
FROM Product
WHERE productID = ANY
  (SELECT productId
  FROM orderDetail
  WHERE amount > 4);
  
--9 lists the customers' names with a total price for oder more than 5000 UAH
SELECT name
FROM Customer
WHERE EXISTS (SELECT orderId FROM orderr WHERE Customer.customerId = orderr.customerId AND totalPrice > 5000);
        
--10  lists the name of customers, sorted high to low customer ID (Only include first 100 customers)
SELECT COUNT(customerID), name
FROM Customer
GROUP BY name
HAVING COUNT(customerID) < 100
ORDER BY COUNT(customerID) DESC;


  
