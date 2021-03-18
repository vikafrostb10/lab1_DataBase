CREATE TABLE "order" (
  "orderId" int,
  "customerId" int,
  "orderDate" date,
  "totalPrice" int,
  PRIMARY KEY ("orderId", "customerId")
);
insert into order (orderId, customerId, orderDate, email, totalPrice) values (1, 1, '8/11/2020', 'cbartozzi0@cnbc.com', 1084.9);
insert into order (orderId, customerId, orderDate, email, totalPrice) values (2, 2, '1/31/2021', 'apingstone1@kickstarter.com', 6835.8);
insert into order (orderId, customerId, orderDate, email, totalPrice) values (3, 3, '8/23/2020', 'blobley2@zdnet.com', 8501.2);
insert into order (orderId, customerId, orderDate, email, totalPrice) values (4, 4, '1/17/2021', 'dkornas3@pbs.org', 5379.2);
insert into order (orderId, customerId, orderDate, email, totalPrice) values (5, 5, '4/7/2020', 'lpedden4@boston.com', 7655.5);
insert into order (orderId, customerId, orderDate, email, totalPrice) values (6, 6, '5/25/2020', 'htosspell5@wordpress.org', 3320.8);
insert into order (orderId, customerId, orderDate, email, totalPrice) values (7, 7, '2/16/2021', 'zeddins6@bbc.co.uk', 1387.6);
insert into order (orderId, customerId, orderDate, email, totalPrice) values (8, 8, '11/27/2020', 'chaking7@google.ca', 1963.7);
insert into order (orderId, customerId, orderDate, email, totalPrice) values (9, 9, '7/14/2020', 'dhaveline8@nyu.edu', 9179.6);
insert into order (orderId, customerId, orderDate, email, totalPrice) values (10, 10, '11/14/2020', 'dfidelus9@goo.ne.jp', 1981.1);
insert into order (orderId, customerId, orderDate, email, totalPrice) values (11, 11, '7/12/2020', 'cbrayfielda@google.es', 2004.8);
insert into order (orderId, customerId, orderDate, email, totalPrice) values (12, 12, '10/31/2020', 'iexellb@census.gov', 5779.8);
insert into order (orderId, customerId, orderDate, email, totalPrice) values (13, 13, '12/28/2020', 'pschultzec@bloomberg.com', 3022.2);
insert into order (orderId, customerId, orderDate, email, totalPrice) values (14, 14, '1/2/2021', 'dhorsfieldd@ucoz.com', 6242.2);
insert into order (orderId, customerId, orderDate, email, totalPrice) values (15, 15, '12/2/2020', 'kbywaterse@de.vu', 468.0);
insert into order (orderId, customerId, orderDate, email, totalPrice) values (16, 16, '1/28/2021', 'gblaslif@oaic.gov.au', 5818.6);
insert into order (orderId, customerId, orderDate, email, totalPrice) values (17, 17, '12/1/2020', 'jmerling@upenn.edu', 5142.2);
insert into order (orderId, customerId, orderDate, email, totalPrice) values (18, 18, '1/13/2021', 'ablatchfordh@youtube.com', 4363.0);
insert into order (orderId, customerId, orderDate, email, totalPrice) values (19, 19, '3/16/2021', 'htranteri@bbb.org', 7527.1);
insert into order (orderId, customerId, orderDate, email, totalPrice) values (20, 20, '3/10/2021', 'winglefieldj@miibeian.gov.cn', 5780.1);
insert into order (orderId, customerId, orderDate, email, totalPrice) values (21, 21, '10/19/2020', 'tashbeek@google.es', 6666.7);

CREATE TABLE "orderDetail" (
  "orderId" int,
  "orderDetailId" int,
  "productId" int,
  "amount" int,
  "price" int,
  PRIMARY KEY ("orderId", "orderDetailId")
);
insert into orderDetail (orderId, orderDetailId, productId, amount, price) values (1, 1, 388, 1, 2860.7);
insert into orderDetail (orderId, orderDetailId, productId, amount, price) values (2, 2, 169, 4, 2342.8);
insert into orderDetail (orderId, orderDetailId, productId, amount, price) values (3, 3, 521, null, 8525.9);
insert into orderDetail (orderId, orderDetailId, productId, amount, price) values (4, 4, 734, 2, 2490.4);
insert into orderDetail (orderId, orderDetailId, productId, amount, price) values (5, 5, 84, 4, 7829.4);
insert into orderDetail (orderId, orderDetailId, productId, amount, price) values (6, 6, 653, 3, 6606.5);
insert into orderDetail (orderId, orderDetailId, productId, amount, price) values (7, 7, 58, 1, 7484.9);
insert into orderDetail (orderId, orderDetailId, productId, amount, price) values (8, 8, 91, 3, 4837.5);
insert into orderDetail (orderId, orderDetailId, productId, amount, price) values (9, 9, 177, 3, 5787.0);
insert into orderDetail (orderId, orderDetailId, productId, amount, price) values (10, 10, 117, 1, 1303.6);
insert into orderDetail (orderId, orderDetailId, productId, amount, price) values (11, 11, 881, 2, 8079.2);
insert into orderDetail (orderId, orderDetailId, productId, amount, price) values (12, 12, 964, 2, 7687.9);
insert into orderDetail (orderId, orderDetailId, productId, amount, price) values (13, 13, 751, 3, 5943.5);
insert into orderDetail (orderId, orderDetailId, productId, amount, price) values (14, 14, 132, 2, 1449.2);
insert into orderDetail (orderId, orderDetailId, productId, amount, price) values (15, 15, 242, 3, 293.4);
insert into orderDetail (orderId, orderDetailId, productId, amount, price) values (16, 16, 733, 3, 6786.5);
insert into orderDetail (orderId, orderDetailId, productId, amount, price) values (17, 17, 609, 4, 5115.8);
insert into orderDetail (orderId, orderDetailId, productId, amount, price) values (18, 18, 422, 1, 6022.4);
insert into orderDetail (orderId, orderDetailId, productId, amount, price) values (19, 19, 55, 2, 9627.1);
insert into orderDetail (orderId, orderDetailId, productId, amount, price) values (20, 20, 277, 1, 9367.2);



CREATE TABLE "Customer" (
  "customerId" int PRIMARY KEY,
  "name" varchar,
  "mail" varchar,
  "zipCode" int,
  "address" varchar,
  "phone" phone,
  "vip" bool
);

insert into Customer (customerId, name, mail, zipCode, address, phone, vip) values (1, 'Kara-lynn Hamnett', 'khamnett0@tumblr.com', '36-007', '03085 Manitowish Way', '+48 (846) 773-2797', false);
insert into Customer (customerId, name, mail, zipCode, address, phone, vip) values (2, 'Andras Hindmoor', 'ahindmoor1@sitemeter.com', null, '4775 Loomis Alley', '+255 (806) 665-1911', true);
insert into Customer (customerId, name, mail, zipCode, address, phone, vip) values (3, 'Rees Leadston', 'rleadston2@ning.com', '0243', '55 Ronald Regan Court', '+64 (370) 871-3426', false);
insert into Customer (customerId, name, mail, zipCode, address, phone, vip) values (4, 'Michelina Darthe', 'mdarthe3@wiley.com', null, '0 Victoria Place', '+967 (232) 442-2665', false);
insert into Customer (customerId, name, mail, zipCode, address, phone, vip) values (5, 'Todd Hallin', 'thallin4@sakura.ne.jp', null, '2 Eggendart Road', '+62 (810) 640-7450', false);
insert into Customer (customerId, name, mail, zipCode, address, phone, vip) values (6, 'Winston Di Carlo', 'wdi5@tripod.com', null, '251 Hanson Park', '+852 (925) 869-0249', false);
insert into Customer (customerId, name, mail, zipCode, address, phone, vip) values (7, 'Gavan Bagger', 'gbagger6@reddit.com', null, '19 Parkside Pass', '+86 (311) 158-9278', false);
insert into Customer (customerId, name, mail, zipCode, address, phone, vip) values (8, 'Evvy Holwell', 'eholwell7@live.com', null, '78938 Vahlen Pass', '+86 (683) 381-6476', true);
insert into Customer (customerId, name, mail, zipCode, address, phone, vip) values (9, 'Kassia Beet', 'kbeet8@army.mil', null, '83 Milwaukee Avenue', '+86 (292) 810-9008', false);
insert into Customer (customerId, name, mail, zipCode, address, phone, vip) values (10, 'Emmaline Bergstrand', 'ebergstrand9@over-blog.com', '5270', '7 Menomonie Drive', '+386 (101) 544-1933', true);
insert into Customer (customerId, name, mail, zipCode, address, phone, vip) values (11, 'Phylis Gorthy', 'pgorthya@1und1.de', null, '551 Evergreen Center', '+84 (550) 873-2941', false);
insert into Customer (customerId, name, mail, zipCode, address, phone, vip) values (12, 'Carly Musselwhite', 'cmusselwhiteb@wufoo.com', null, '8 Warrior Circle', '+86 (853) 460-9740', false);
insert into Customer (customerId, name, mail, zipCode, address, phone, vip) values (13, 'Gregorio Youngs', 'gyoungsc@comcast.net', 'A2V', '89227 Texas Pass', '+1 (867) 994-3550', true);
insert into Customer (customerId, name, mail, zipCode, address, phone, vip) values (14, 'Sollie Gavahan', 'sgavahand@jugem.jp', '57130', '8 Rieder Trail', '+66 (855) 944-7057', false);
insert into Customer (customerId, name, mail, zipCode, address, phone, vip) values (15, 'Norbert Hymus', 'nhymuse@yale.edu', null, '4 1st Parkway', '+62 (727) 767-8333', true);
insert into Customer (customerId, name, mail, zipCode, address, phone, vip) values (16, 'Gamaliel Sallis', 'gsallisf@virginia.edu', null, '64349 Clarendon Plaza', '+86 (966) 912-9064', true);
insert into Customer (customerId, name, mail, zipCode, address, phone, vip) values (17, 'Adrianne Lavalle', 'alavalleg@shop-pro.jp', null, '3 Main Hill', '+86 (372) 223-9119', true);
insert into Customer (customerId, name, mail, zipCode, address, phone, vip) values (18, 'Pembroke Pawlik', 'ppawlikh@booking.com', '6037', '55 Glendale Court', '+63 (695) 124-6520', true);
insert into Customer (customerId, name, mail, zipCode, address, phone, vip) values (19, 'Lorens Care', 'lcarei@scientificamerican.com', '746 40', '7130 Colorado Parkway', '+46 (236) 742-3796', false);
insert into Customer (customerId, name, mail, zipCode, address, phone, vip) values (20, 'Ikey Stanmore', 'istanmorej@ning.com', null, '3 Troy Alley', '+86 (962) 369-5552', true);


CREATE TABLE "Payment" (
  "orderDetailId" int,
  "customerId" int,
  "price" int,
  "discount" int,
  PRIMARY KEY ("orderDetailId", "customerId")
);

insert into Payment (orderDetailId, customerId, price, discount) values (1, 1, 3673.9, 11);
insert into Payment (orderDetailId, customerId, price, discount) values (2, 2, 5290.1, 12);
insert into Payment (orderDetailId, customerId, price, discount) values (3, 3, 7005.8, 3);
insert into Payment (orderDetailId, customerId, price, discount) values (4, 4, 4423.5, 10);
insert into Payment (orderDetailId, customerId, price, discount) values (5, 5, 6772.0, 12);
insert into Payment (orderDetailId, customerId, price, discount) values (6, 6, 2919.3, 8);
insert into Payment (orderDetailId, customerId, price, discount) values (7, 7, 7926.5, 9);
insert into Payment (orderDetailId, customerId, price, discount) values (8, 8, 5848.4, 5);
insert into Payment (orderDetailId, customerId, price, discount) values (9, 9, 4758.8, 11);
insert into Payment (orderDetailId, customerId, price, discount) values (10, 10, 3627.6, 11);
insert into Payment (orderDetailId, customerId, price, discount) values (11, 11, 9872.8, 6);
insert into Payment (orderDetailId, customerId, price, discount) values (12, 12, 2686.5, 12);
insert into Payment (orderDetailId, customerId, price, discount) values (13, 13, 9733.2, 4);
insert into Payment (orderDetailId, customerId, price, discount) values (14, 14, 2681.1, 12);
insert into Payment (orderDetailId, customerId, price, discount) values (15, 15, 312.8, 3);
insert into Payment (orderDetailId, customerId, price, discount) values (16, 16, 6158.0, 7);
insert into Payment (orderDetailId, customerId, price, discount) values (17, 17, 2258.9, 6);
insert into Payment (orderDetailId, customerId, price, discount) values (18, 18, 9766.1, 3);
insert into Payment (orderDetailId, customerId, price, discount) values (19, 19, 3040.4, 11);
insert into Payment (orderDetailId, customerId, price, discount) values (20, 20, 5101.2, 14);


CREATE TABLE "Product" (
  "productId" int PRIMARY KEY,
  "name" varchar,
  "price" int
);

insert into Product (productId, name, price) values (314, 'Cheese - Cambozola', 884.8);
insert into Product (productId, name, price) values (793, 'Cheese - Brie,danish', 77.4);
insert into Product (productId, name, price) values (87, 'Beer - True North Lager', 235.4);
insert into Product (productId, name, price) values (192, 'Carbonated Water - Orange', 486.0);
insert into Product (productId, name, price) values (351, 'Nut - Almond, Blanched, Whole', 183.8);
insert into Product (productId, name, price) values (873, 'Cherries - Fresh', 534.7);
insert into Product (productId, name, price) values (888, 'Pomello', 95.3);
insert into Product (productId, name, price) values (966, 'Beef - Tenderloin - Aa', 59.8);
insert into Product (productId, name, price) values (562, 'Scallops - In Shell', 945.2);
insert into Product (productId, name, price) values (875, 'Lid - High Heat, Super Clear', 106.6);
insert into Product (productId, name, price) values (772, 'Wine - Alsace Gewurztraminer', 307.0);
insert into Product (productId, name, price) values (731, 'Pickles - Gherkins', 175.6);
insert into Product (productId, name, price) values (236, 'Sauce - Caesar Dressing', 132.3);
insert into Product (productId, name, price) values (961, 'Arctic Char - Fresh, Whole', 801.6);
insert into Product (productId, name, price) values (172, 'Artichokes - Knobless, White', 985.3);
insert into Product (productId, name, price) values (861, 'Crab - Meat', 89.1);
insert into Product (productId, name, price) values (518, 'Ice Cream Bar - Oreo Cone', 341.2);
insert into Product (productId, name, price) values (278, 'Ice Cream Bar - Oreo Sandwich', 789.0);
insert into Product (productId, name, price) values (910, 'Magnotta Bel Paese Red', 782.1);
insert into Product (productId, name, price) values (204, 'Coffee - Espresso', 602.1);


ALTER TABLE "orderDetail" ADD CONSTRAINT "name" FOREIGN KEY ("orderDetailId") REFERENCES "order" ("orderId");

ALTER TABLE "order" ADD CONSTRAINT "name" FOREIGN KEY ("orderId") REFERENCES "Customer" ("customerId");

ALTER TABLE "Payment" ADD CONSTRAINT "name" FOREIGN KEY ("orderDetailId") REFERENCES "Customer" ("customerId");

ALTER TABLE "Product" ADD CONSTRAINT "name" FOREIGN KEY ("productId") REFERENCES "orderDetail" ("productId");

