CREATE TABLE "order" (
  "orderId" int,
  "customerId" int,
  "orderDate" date,
  "totalPrice" int,
  PRIMARY KEY ("orderId", "customerId")
);

CREATE TABLE "orderDetail" (
  "orderId" int,
  "orderDetailId" int,
  "productId" int,
  "amount" int,
  "price" int,
  PRIMARY KEY ("orderId", "orderDetailId")
);

CREATE TABLE "Customer" (
  "customerId" int PRIMARY KEY,
  "name" varchar,
  "mail" varchar,
  "zipCode" int,
  "address" varchar,
  "phone" phone,
  "vip" bool
);

CREATE TABLE "Payment" (
  "orderDetailId" int,
  "customerId" int,
  "price" int,
  "discount" int,
  PRIMARY KEY ("orderDetailId", "customerId")
);

CREATE TABLE "Product" (
  "productId" int PRIMARY KEY,
  "name" varchar,
  "price" int,
  "discount" int
);

ALTER TABLE "orderDetail" ADD CONSTRAINT "name" FOREIGN KEY ("orderDetailId") REFERENCES "order" ("orderId");

ALTER TABLE "order" ADD CONSTRAINT "name" FOREIGN KEY ("orderId") REFERENCES "Customer" ("customerId");

ALTER TABLE "Payment" ADD CONSTRAINT "name" FOREIGN KEY ("orderDetailId") REFERENCES "Customer" ("customerId");

ALTER TABLE "Product" ADD CONSTRAINT "name" FOREIGN KEY ("productId") REFERENCES "orderDetail" ("productId");

