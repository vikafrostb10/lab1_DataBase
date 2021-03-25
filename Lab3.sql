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

--4. 
SELECT price FROM orderDetail
UNION
SELECT price FROM Product
ORDER BY price;

