CREATE SCHEMA production;

CREATE SCHEMA sales;

CREATE TABLE production.categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR (255) NOT NULL
);

INSERT INTO production.categories(category_id,category_name) VALUES(1,'Children Bicycles');
INSERT INTO production.categories(category_id,category_name) VALUES(2,'Comfort Bicycles');
INSERT INTO production.categories(category_id,category_name) VALUES(3,'Cruisers Bicycles');
INSERT INTO production.categories(category_id,category_name) VALUES(4,'Cyclocross Bicycles');
INSERT INTO production.categories(category_id,category_name) VALUES(5,'Electric Bikes');
INSERT INTO production.categories(category_id,category_name) VALUES(6,'Mountain Bikes');
INSERT INTO production.categories(category_id,category_name) VALUES(7,'Road Bikes');


CREATE TABLE production.brands (
    brand_id INT PRIMARY KEY,
    brand_name VARCHAR (255) NOT NULL
);

INSERT INTO production.brands(brand_id,brand_name) VALUES(1,'Electra'),
(2,'Haro'),
(3,'Heller'),
(4,'Pure Cycles'),
(5,'Ritchey'),
(6,'Strider'),
(7,'Sun Bicycles'),
(8,'Surly'),
(9,'Trek');

CREATE TABLE production.products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR (255) NOT NULL,
    brand_id INT NOT NULL,
    category_id INT NOT NULL,
    model_year SMALLINT NOT NULL,
    list_price DECIMAL (10, 2) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES production.categories (category_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (brand_id) REFERENCES production.brands (brand_id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(1,'Trek 820 - 2016',9,6,2016,379.99),
(2,'Ritchey Timberwolf Frameset - 2016',5,6,2016,749.99),
(3,'Surly Wednesday Frameset - 2016',8,6,2016,999.99),
(4,'Trek Fuel EX 8 29 - 2016',9,6,2016,2899.99),
(5,'Heller Shagamaw Frame - 2016',3,6,2016,1320.99),
(6,'Surly Ice Cream Truck Frameset - 2016',8,6,2016,469.99),
(7,'Trek Slash 8 27.5 - 2016',9,6,2016,3999.99),
(8,'Trek Remedy 29 Carbon Frameset - 2016',9,6,2016,1799.99),
(9,'Trek Conduit+ - 2016',9,5,2016,2999.99),
(10,'Surly Straggler - 2016',8,4,2016,1549),
(11,'Surly Straggler 650b - 2016',8,4,2016,1680.99),
(12,'Electra Townie Original 21D - 2016',1,3,2016,549.99),
(13,'Electra Cruiser 1 (24-Inch) - 2016',1,3,2016,269.99),
(14,'Electra Girl''s Hawaii 1 (16-inch) - 2015/2016',1,3,2016,269.99),
(15,'Electra Moto 1 - 2016',1,3,2016,529.99),
(16,'Electra Townie Original 7D EQ - 2016',1,3,2016,599.99),
(17,'Pure Cycles Vine 8-Speed - 2016',4,3,2016,429),
(18,'Pure Cycles Western 3-Speed - Women''s - 2015/2016',4,3,2016,449),
(19,'Pure Cycles William 3-Speed - 2016',4,3,2016,449),
(20,'Electra Townie Original 7D EQ - Women''s - 2016',1,3,2016,599.99),
(21,'Electra Cruiser 1 (24-Inch) - 2016',1,1,2016,269.99),
(22,'Electra Girl''s Hawaii 1 (16-inch) - 2015/2016',1,1,2016,269.99),
(23,'Electra Girl''s Hawaii 1 (20-inch) - 2015/2016',1,1,2016,299.99),
(24,'Electra Townie Original 21D - 2016',1,2,2016,549.99),
(25,'Electra Townie Original 7D - 2015/2016',1,2,2016,499.99),
(26,'Electra Townie Original 7D EQ - 2016',1,2,2016,599.99);

INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(27,'Surly Big Dummy Frameset - 2017',8,6,2017,999.99),
(28,'Surly Karate Monkey 27.5+ Frameset - 2017',8,6,2017,2499.99),
(29,'Trek X-Caliber 8 - 2017',9,6,2017,999.99),
(30,'Surly Ice Cream Truck Frameset - 2017',8,6,2017,999.99),
(31,'Surly Wednesday - 2017',8,6,2017,1632.99),
(32,'Trek Farley Alloy Frameset - 2017',9,6,2017,469.99),
(33,'Surly Wednesday Frameset - 2017',8,6,2017,469.99),
(34,'Trek Session DH 27.5 Carbon Frameset - 2017',9,6,2017,469.99),
(35,'Sun Bicycles Spider 3i - 2017',7,6,2017,832.99),
(36,'Surly Troll Frameset - 2017',8,6,2017,832.99),
(37,'Haro Flightline One ST - 2017',2,6,2017,379.99),
(38,'Haro Flightline Two 26 Plus - 2017',2,6,2017,549.99),
(39,'Trek Stache 5 - 2017',9,6,2017,1499.99),
(40,'Trek Fuel EX 9.8 29 - 2017',9,6,2017,4999.99),
(41,'Haro Shift R3 - 2017',2,6,2017,1469.99),
(42,'Trek Fuel EX 5 27.5 Plus - 2017',9,6,2017,2299.99),
(43,'Trek Fuel EX 9.8 27.5 Plus - 2017',9,6,2017,5299.99),
(44,'Haro SR 1.1 - 2017',2,6,2017,539.99),
(45,'Haro SR 1.2 - 2017',2,6,2017,869.99),
(46,'Haro SR 1.3 - 2017',2,6,2017,1409.99),
(47,'Trek Remedy 9.8 - 2017',9,6,2017,5299.99),
(48,'Trek Emonda S 4 - 2017',9,7,2017,1499.99),
(49,'Trek Domane SL 6 - 2017',9,7,2017,3499.99),
(50,'Trek Silque SLR 7 Women''s - 2017',9,7,2017,5999.99),
(51,'Trek Silque SLR 8 Women''s - 2017',9,7,2017,6499.99),
(52,'Surly Steamroller - 2017',8,7,2017,875.99),
(53,'Surly Ogre Frameset - 2017',8,7,2017,749.99),
(54,'Trek Domane SL Disc Frameset - 2017',9,7,2017,3199.99),
(55,'Trek Domane S 6 - 2017',9,7,2017,2699.99),
(56,'Trek Domane SLR 6 Disc - 2017',9,7,2017,5499.99),
(57,'Trek Emonda S 5 - 2017',9,7,2017,1999.99),
(58,'Trek Madone 9.2 - 2017',9,7,2017,4999.99),
(59,'Trek Domane S 5 Disc - 2017',9,7,2017,2599.99),
(60,'Sun Bicycles ElectroLite - 2017',7,5,2017,1559.99),
(61,'Trek Powerfly 8 FS Plus - 2017',9,5,2017,4999.99),
(62,'Trek Boone 7 - 2017',9,4,2017,3499.99),
(63,'Trek Boone Race Shop Limited - 2017',9,4,2017,3499.99),
(64,'Electra Townie Original 7D - 2017',1,3,2017,489.99),
(65,'Sun Bicycles Lil Bolt Type-R - 2017',7,3,2017,346.99),
(66,'Sun Bicycles Revolutions 24 - 2017',7,3,2017,250.99),
(67,'Sun Bicycles Revolutions 24 - Girl''s - 2017',7,3,2017,250.99),
(68,'Sun Bicycles Cruz 3 - 2017',7,3,2017,449.99),
(69,'Sun Bicycles Cruz 7 - 2017',7,3,2017,416.99),
(70,'Electra Amsterdam Original 3i - 2015/2017',1,3,2017,659.99),
(71,'Sun Bicycles Atlas X-Type - 2017',7,3,2017,416.99),
(72,'Sun Bicycles Biscayne Tandem 7 - 2017',7,3,2017,619.99),
(73,'Sun Bicycles Brickell Tandem 7 - 2017',7,3,2017,749.99),
(74,'Electra Cruiser Lux 1 - 2017',1,3,2017,439.99),
(75,'Electra Cruiser Lux Fat Tire 1 Ladies - 2017',1,3,2017,599.99),
(76,'Electra Girl''s Hawaii 1 16" - 2017',1,3,2017,299.99),
(77,'Electra Glam Punk 3i Ladies'' - 2017',1,3,2017,799.99),
(78,'Sun Bicycles Biscayne Tandem CB - 2017',7,3,2017,647.99),
(79,'Sun Bicycles Boardwalk (24-inch Wheels) - 2017',7,3,2017,402.99),
(80,'Sun Bicycles Brickell Tandem CB - 2017',7,3,2017,761.99),
(81,'Electra Amsterdam Fashion 7i Ladies'' - 2017',1,3,2017,1099.99),
(82,'Electra Amsterdam Original 3i Ladies'' - 2017',1,3,2017,659.99),
(83,'Trek Boy''s Kickster - 2015/2017',9,1,2017,149.99),
(84,'Sun Bicycles Lil Kitt''n - 2017',7,1,2017,109.99),
(85,'Haro Downtown 16 - 2017',2,1,2017,329.99),
(86,'Trek Girl''s Kickster - 2017',9,1,2017,149.99),
(87,'Trek Precaliber 12 Boys - 2017',9,1,2017,189.99),
(88,'Trek Precaliber 12 Girls - 2017',9,1,2017,189.99),
(89,'Trek Precaliber 16 Boys - 2017',9,1,2017,209.99),
(90,'Trek Precaliber 16 Girls - 2017',9,1,2017,209.99),
(91,'Trek Precaliber 24 (21-Speed) - Girls - 2017',9,1,2017,349.99),
(92,'Haro Shredder 20 - 2017',2,1,2017,209.99),
(93,'Haro Shredder 20 Girls - 2017',2,1,2017,209.99),
(94,'Haro Shredder Pro 20 - 2017',2,1,2017,249.99),
(95,'Electra Girl''s Hawaii 1 16" - 2017',1,1,2017,299.99),
(96,'Electra Moto 3i (20-inch) - Boy''s - 2017',1,1,2017,349.99),
(97,'Electra Savannah 3i (20-inch) - Girl''s - 2017',1,1,2017,349.99),
(98,'Electra Straight 8 3i (20-inch) - Boy''s - 2017',1,1,2017,489.99),
(99,'Electra Sugar Skulls 1 (20-inch) - Girl''s - 2017',1,1,2017,299.99),
(100,'Electra Townie 3i EQ (20-inch) - Boys'' - 2017',1,1,2017,489.99),
(101,'Electra Townie 7D (20-inch) - Boys'' - 2017',1,1,2017,339.99),
(102,'Electra Townie Original 7D - 2017',1,2,2017,489.99),
(103,'Sun Bicycles Streamway 3 - 2017',7,2,2017,551.99),
(104,'Sun Bicycles Streamway - 2017',7,2,2017,481.99),
(105,'Sun Bicycles Streamway 7 - 2017',7,2,2017,533.99),
(106,'Sun Bicycles Cruz 3 - 2017',7,2,2017,449.99),
(107,'Sun Bicycles Cruz 7 - 2017',7,2,2017,416.99),
(108,'Sun Bicycles Cruz 3 - Women''s - 2017',7,2,2017,449.99),
(109,'Sun Bicycles Cruz 7 - Women''s - 2017',7,2,2017,416.99),
(110,'Sun Bicycles Drifter 7 - 2017',7,2,2017,470.99),
(111,'Sun Bicycles Drifter 7 - Women''s - 2017',7,2,2017,470.99),
(112,'Trek 820 - 2018',9,6,2018,379.99),
(113,'Trek Marlin 5 - 2018',9,6,2018,489.99),
(114,'Trek Marlin 6 - 2018',9,6,2018,579.99),
(115,'Trek Fuel EX 8 29 - 2018',9,6,2018,3199.99),
(116,'Trek Marlin 7 - 2017/2018',9,6,2018,749.99),
(117,'Trek Ticket S Frame - 2018',9,6,2018,1469.99),
(118,'Trek X-Caliber 8 - 2018',9,6,2018,999.99),
(119,'Trek Kids'' Neko - 2018',9,6,2018,469.99),
(120,'Trek Fuel EX 7 29 - 2018',9,6,2018,2499.99),
(121,'Surly Krampus Frameset - 2018',8,6,2018,2499.99),
(122,'Surly Troll Frameset - 2018',8,6,2018,2499.99),
(123,'Trek Farley Carbon Frameset - 2018',9,6,2018,999.99),
(124,'Surly Krampus - 2018',8,6,2018,1499),
(125,'Trek Kids'' Dual Sport - 2018',9,6,2018,469.99),
(126,'Surly Big Fat Dummy Frameset - 2018',8,6,2018,469.99),
(127,'Surly Pack Rat Frameset - 2018',8,6,2018,469.99),
(128,'Surly ECR 27.5 - 2018',8,6,2018,1899),
(129,'Trek X-Caliber 7 - 2018',9,6,2018,919.99),
(130,'Trek Stache Carbon Frameset - 2018',9,6,2018,919.99),
(131,'Heller Bloodhound Trail - 2018',3,6,2018,2599),
(132,'Trek Procal AL Frameset - 2018',9,6,2018,1499.99),
(133,'Trek Procaliber Frameset - 2018',9,6,2018,1499.99),
(134,'Trek Remedy 27.5 C Frameset - 2018',9,6,2018,1499.99),
(135,'Trek X-Caliber Frameset - 2018',9,6,2018,1499.99),
(136,'Trek Procaliber 6 - 2018',9,6,2018,1799.99),
(137,'Heller Shagamaw GX1 - 2018',3,6,2018,2599),
(138,'Trek Fuel EX 5 Plus - 2018',9,6,2018,2249.99),
(139,'Trek Remedy 7 27.5 - 2018',9,6,2018,2999.99),
(140,'Trek Remedy 9.8 27.5 - 2018',9,6,2018,4999.99),
(141,'Trek Stache 5 - 2018',9,6,2018,1599.99),
(142,'Trek Fuel EX 8 29 XT - 2018',9,6,2018,3199.99),
(143,'Trek Domane ALR 3 - 2018',9,7,2018,1099.99),
(144,'Trek Domane ALR 4 Disc - 2018',9,7,2018,1549.99),
(145,'Trek Domane ALR 5 Disc - 2018',9,7,2018,1799.99),
(146,'Trek Domane SLR 6 - 2018',9,7,2018,4999.99),
(147,'Trek Domane ALR 5 Gravel - 2018',9,7,2018,1799.99),
(148,'Trek Domane SL 8 Disc - 2018',9,7,2018,5499.99),
(149,'Trek Domane SLR 8 Disc - 2018',9,7,2018,7499.99),
(150,'Trek Emonda SL 7 - 2018',9,7,2018,4499.99),
(151,'Trek Domane ALR 4 Disc Women''s - 2018',9,7,2018,1549.99),
(152,'Trek Domane SL 5 Disc Women''s - 2018',9,7,2018,2499.99),
(153,'Trek Domane SL 7 Women''s - 2018',9,7,2018,4999.99),
(154,'Trek Domane SLR 6 Disc Women''s - 2018',9,7,2018,5499.99),
(155,'Trek Domane SLR 9 Disc - 2018',9,7,2018,11999.99),
(156,'Trek Domane SL Frameset - 2018',9,7,2018,6499.99),
(157,'Trek Domane SL Frameset Women''s - 2018',9,7,2018,6499.99),
(158,'Trek CrossRip 1 - 2018',9,7,2018,959.99),
(159,'Trek Emonda ALR 6 - 2018',9,7,2018,2299.99),
(160,'Trek Emonda SLR 6 - 2018',9,7,2018,4499.99),
(161,'Surly ECR - 2018',8,7,2018,1899),
(162,'Trek Emonda SL 6 Disc - 2018',9,7,2018,2999.99),
(163,'Surly Pack Rat - 2018',8,7,2018,1349),
(164,'Surly Straggler 650b - 2018',8,7,2018,1549),
(165,'Trek 1120 - 2018',9,7,2018,2499.99),
(166,'Trek Domane AL 2 Women''s - 2018',9,7,2018,749.99),
(167,'Surly ECR Frameset - 2018',8,7,2018,749.99),
(168,'Surly Straggler - 2018',8,7,2018,1549),
(169,'Trek Emonda SLR 8 - 2018',9,7,2018,6499.99),
(170,'Trek CrossRip 2 - 2018',9,7,2018,1299.99),
(171,'Trek Domane SL 6 - 2018',9,7,2018,3199.99),
(172,'Trek Domane ALR Disc Frameset - 2018',9,7,2018,3199.99),
(173,'Trek Domane ALR Frameset - 2018',9,7,2018,3199.99),
(174,'Trek Domane SLR Disc Frameset - 2018',9,7,2018,3199.99),
(175,'Trek Domane SLR Frameset - 2018',9,7,2018,3199.99),
(176,'Trek Madone 9 Frameset - 2018',9,7,2018,3199.99),
(177,'Trek Domane SLR 6 Disc - 2018',9,7,2018,5499.99),
(178,'Trek Domane AL 2 - 2018',9,7,2018,749.99),
(179,'Trek Domane AL 3 - 2018',9,7,2018,919.99),
(180,'Trek Domane AL 3 Women''s - 2018',9,7,2018,919.99),
(181,'Trek Domane SL 5 - 2018',9,7,2018,2199.99),
(182,'Trek Domane SL 5 Disc - 2018',9,7,2018,2499.99),
(183,'Trek Domane SL 5 Women''s - 2018',9,7,2018,2199.99),
(184,'Trek Domane SL 6 Disc - 2018',9,7,2018,3499.99),
(185,'Trek Conduit+ - 2018',9,5,2018,2799.99),
(186,'Trek CrossRip+ - 2018',9,5,2018,4499.99),
(187,'Trek Neko+ - 2018',9,5,2018,2799.99),
(188,'Trek XM700+ Lowstep - 2018',9,5,2018,3499.99),
(189,'Trek Lift+ Lowstep - 2018',9,5,2018,2799.99),
(190,'Trek Dual Sport+ - 2018',9,5,2018,2799.99),
(191,'Electra Loft Go! 8i - 2018',1,5,2018,2799.99),
(192,'Electra Townie Go! 8i - 2017/2018',1,5,2018,2599.99),
(193,'Trek Lift+ - 2018',9,5,2018,2799.99),
(194,'Trek XM700+ - 2018',9,5,2018,3499.99),
(195,'Electra Townie Go! 8i Ladies'' - 2018',1,5,2018,2599.99),
(196,'Trek Verve+ - 2018',9,5,2018,2299.99),
(197,'Trek Verve+ Lowstep - 2018',9,5,2018,2299.99),
(198,'Electra Townie Commute Go! - 2018',1,5,2018,2999.99),
(199,'Electra Townie Commute Go! Ladies'' - 2018',1,5,2018,2999.99),
(200,'Trek Powerfly 5 - 2018',9,5,2018,3499.99),
(201,'Trek Powerfly 5 FS - 2018',9,5,2018,4499.99),
(202,'Trek Powerfly 5 Women''s - 2018',9,5,2018,3499.99),
(203,'Trek Powerfly 7 FS - 2018',9,5,2018,4999.99),
(204,'Trek Super Commuter+ 7 - 2018',9,5,2018,3599.99),
(205,'Trek Super Commuter+ 8S - 2018',9,5,2018,4999.99),
(206,'Trek Boone 5 Disc - 2018',9,4,2018,3299.99),
(207,'Trek Boone 7 Disc - 2018',9,4,2018,3999.99),
(208,'Trek Crockett 5 Disc - 2018',9,4,2018,1799.99),
(209,'Trek Crockett 7 Disc - 2018',9,4,2018,2999.99),
(210,'Surly Straggler - 2018',8,4,2018,1549),
(211,'Surly Straggler 650b - 2018',8,4,2018,1549),
(212,'Electra Townie Original 21D - 2018',1,3,2018,559.99),
(213,'Electra Cruiser 1 - 2016/2017/2018',1,3,2018,269.99),
(214,'Electra Tiger Shark 3i - 2018',1,3,2018,899.99),
(215,'Electra Queen of Hearts 3i - 2018',1,3,2018,749.99),
(216,'Electra Super Moto 8i - 2018',1,3,2018,899.99),
(217,'Electra Straight 8 3i - 2018',1,3,2018,909.99),
(218,'Electra Cruiser 7D - 2016/2017/2018',1,3,2018,319.99),
(219,'Electra Moto 3i - 2018',1,3,2018,639.99),
(220,'Electra Cruiser 1 Ladies'' - 2018',1,3,2018,269.99),
(221,'Electra Cruiser 7D Ladies'' - 2016/2018',1,3,2018,319.99),
(222,'Electra Cruiser 1 Tall - 2016/2018',1,3,2018,269.99),
(223,'Electra Cruiser Lux 3i - 2018',1,3,2018,529.99),
(224,'Electra Cruiser Lux 7D - 2018',1,3,2018,479.99),
(225,'Electra Delivery 3i - 2016/2017/2018',1,3,2018,959.99),
(226,'Electra Townie Original 21D EQ - 2017/2018',1,3,2018,679.99),
(227,'Electra Cruiser 7D (24-Inch) Ladies'' - 2016/2018',1,3,2018,319.99),
(228,'Electra Cruiser 7D Tall - 2016/2018',1,3,2018,319.99),
(229,'Electra Cruiser Lux 1 - 2016/2018',1,3,2018,429.99),
(230,'Electra Cruiser Lux 1 Ladies'' - 2018',1,3,2018,429.99),
(231,'Electra Cruiser Lux 3i Ladies'' - 2018',1,3,2018,529.99),
(232,'Electra Cruiser Lux 7D Ladies'' - 2018',1,3,2018,479.99),
(233,'Electra Cruiser Lux Fat Tire 7D - 2018',1,3,2018,639.99),
(234,'Electra Daydreamer 3i Ladies'' - 2018',1,3,2018,899.99),
(235,'Electra Koa 3i Ladies'' - 2018',1,3,2018,899.99),
(236,'Electra Morningstar 3i Ladies'' - 2018',1,3,2018,749.99),
(237,'Electra Relic 3i - 2018',1,3,2018,849.99),
(238,'Electra Townie Balloon 8D EQ - 2016/2017/2018',1,3,2018,749.99),
(239,'Electra Townie Balloon 8D EQ Ladies'' - 2016/2017/2018',1,3,2018,749.99),
(240,'Electra Townie Commute 27D Ladies - 2018',1,3,2018,899.99),
(241,'Electra Townie Commute 8D - 2018',1,3,2018,749.99),
(242,'Electra Townie Commute 8D Ladies'' - 2018',1,3,2018,699.99),
(243,'Electra Townie Original 21D EQ Ladies'' - 2018',1,3,2018,679.99),
(244,'Electra Townie Original 21D Ladies'' - 2018',1,3,2018,559.99),
(245,'Electra Townie Original 3i EQ - 2017/2018',1,3,2018,659.99),
(246,'Electra Townie Original 3i EQ Ladies'' - 2018',1,3,2018,639.99),
(247,'Electra Townie Original 7D EQ - 2018',1,3,2018,599.99),
(248,'Electra Townie Original 7D EQ Ladies'' - 2017/2018',1,3,2018,599.99),
(249,'Electra White Water 3i - 2018',1,3,2018,749.99),
(250,'Electra Townie Go! 8i - 2017/2018',1,3,2018,2599.99),
(251,'Electra Townie Commute Go! - 2018',1,3,2018,2999.99),
(252,'Electra Townie Commute Go! Ladies'' - 2018',1,3,2018,2999.99),
(253,'Electra Townie Go! 8i Ladies'' - 2018',1,3,2018,2599.99),
(254,'Electra Townie Balloon 3i EQ - 2017/2018',1,3,2018,749.99),
(255,'Electra Townie Balloon 7i EQ Ladies'' - 2017/2018',1,3,2018,899.99),
(256,'Electra Townie Commute 27D - 2018',1,3,2018,899.99),
(257,'Electra Amsterdam Fashion 3i Ladies'' - 2017/2018',1,3,2018,899.99),
(258,'Electra Amsterdam Royal 8i - 2017/2018',1,3,2018,1259.9),
(259,'Electra Amsterdam Royal 8i Ladies - 2018',1,3,2018,1199.99),
(260,'Electra Townie Balloon 3i EQ Ladies'' - 2018',1,3,2018,799.99),
(261,'Electra Townie Balloon 7i EQ - 2018',1,3,2018,899.99),
(262,'Trek MT 201 - 2018',9,1,2018,249.99),
(263,'Strider Classic 12 Balance Bike - 2018',6,1,2018,89.99),
(264,'Strider Sport 16 - 2018',6,1,2018,249.99),
(265,'Strider Strider 20 Sport - 2018',6,1,2018,289.99),
(266,'Trek Superfly 20 - 2018',9,1,2018,399.99),
(267,'Trek Precaliber 12 Girl''s - 2018',9,1,2018,199.99),
(268,'Trek Kickster - 2018',9,1,2018,159.99),
(269,'Trek Precaliber 12 Boy''s - 2018',9,1,2018,199.99),
(270,'Trek Precaliber 16 Boy''s - 2018',9,1,2018,209.99),
(271,'Trek Precaliber 16 Girl''s - 2018',9,1,2018,209.99),
(272,'Trek Precaliber 20 6-speed Boy''s - 2018',9,1,2018,289.99),
(273,'Trek Precaliber 20 6-speed Girl''s - 2018',9,1,2018,289.99),
(274,'Trek Precaliber 20 Boy''s - 2018',9,1,2018,229.99),
(275,'Trek Precaliber 20 Girl''s - 2018',9,1,2018,229.99),
(276,'Trek Precaliber 24 (7-Speed) - Boys - 2018',9,1,2018,319.99),
(277,'Trek Precaliber 24 21-speed Boy''s - 2018',9,1,2018,369.99),
(278,'Trek Precaliber 24 21-speed Girl''s - 2018',9,1,2018,369.99),
(279,'Trek Precaliber 24 7-speed Girl''s - 2018',9,1,2018,319.99),
(280,'Trek Superfly 24 - 2017/2018',9,1,2018,489.99),
(281,'Electra Cruiser 7D (24-Inch) Ladies'' - 2016/2018',1,1,2018,319.99),
(282,'Electra Cyclosaurus 1 (16-inch) - Boy''s - 2018',1,1,2018,279.99),
(283,'Electra Heartchya 1 (20-inch) - Girl''s - 2018',1,1,2018,319.99),
(284,'Electra Savannah 1 (20-inch) - Girl''s - 2018',1,1,2018,319.99),
(285,'Electra Soft Serve 1 (16-inch) - Girl''s - 2018',1,1,2018,279.99),
(286,'Electra Starship 1 16" - 2018',1,1,2018,279.99),
(287,'Electra Straight 8 1 (16-inch) - Boy''s - 2018',1,1,2018,279.99),
(288,'Electra Straight 8 1 (20-inch) - Boy''s - 2018',1,1,2018,389.99),
(289,'Electra Superbolt 1 20" - 2018',1,1,2018,319.99),
(290,'Electra Superbolt 3i 20" - 2018',1,1,2018,369.99),
(291,'Electra Sweet Ride 1 (20-inch) - Girl''s - 2018',1,1,2018,319.99),
(292,'Electra Sweet Ride 3i (20-inch) - Girls'' - 2018',1,1,2018,369.99),
(293,'Electra Tiger Shark 1 (20-inch) - Boys'' - 2018',1,1,2018,319.99),
(294,'Electra Tiger Shark 3i (20-inch) - Boys'' - 2018',1,1,2018,369.99),
(295,'Electra Treasure 1 20" - 2018',1,1,2018,319.99),
(296,'Electra Treasure 3i 20" - 2018',1,1,2018,369.99),
(297,'Electra Under-The-Sea 1 16" - 2018',1,1,2018,279.99),
(298,'Electra Water Lily 1 (16-inch) - Girl''s - 2018',1,1,2018,279.99),
(299,'Electra Townie Original 21D - 2018',1,2,2018,559.99),
(300,'Electra Townie Balloon 3i EQ Ladies'' - 2018',1,2,2018,799.99),
(301,'Electra Townie Balloon 7i EQ - 2018',1,2,2018,899.99),
(302,'Electra Townie Original 1 - 2018',1,2,2018,449.99),
(303,'Electra Townie Go! 8i - 2017/2018',1,2,2018,2599.99),
(304,'Electra Townie Original 21D EQ - 2017/2018',1,2,2018,679.99),
(305,'Electra Townie Balloon 3i EQ - 2017/2018',1,2,2018,749.99),
(306,'Electra Townie Balloon 7i EQ Ladies'' - 2017/2018',1,2,2018,899.99),
(307,'Electra Townie Balloon 8D EQ - 2016/2017/2018',1,2,2018,749.99),
(308,'Electra Townie Balloon 8D EQ Ladies'' - 2016/2017/2018',1,2,2018,749.99),
(309,'Electra Townie Commute 27D - 2018',1,2,2018,899.99),
(310,'Electra Townie Commute 27D Ladies - 2018',1,2,2018,899.99),
(311,'Electra Townie Commute 8D - 2018',1,2,2018,749.99),
(312,'Electra Townie Commute 8D Ladies'' - 2018',1,2,2018,699.99),
(313,'Electra Townie Original 1 Ladies'' - 2018',1,2,2018,449.99),
(314,'Electra Townie Original 21D EQ Ladies'' - 2018',1,2,2018,679.99),
(315,'Electra Townie Original 21D Ladies'' - 2018',1,2,2018,559.99),
(316,'Trek Checkpoint ALR 4 Women''s - 2019',9,7,2019,1699.99),
(317,'Trek Checkpoint ALR 5 - 2019',9,7,2019,1999.99),
(318,'Trek Checkpoint ALR 5 Women''s - 2019',9,7,2019,1999.99),
(319,'Trek Checkpoint SL 5 Women''s - 2019',9,7,2019,2799.99),
(320,'Trek Checkpoint SL 6 - 2019',9,7,2019,3799.99),
(321,'Trek Checkpoint ALR Frameset - 2019',9,7,2019,3199.99);

CREATE TABLE sales.customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR (255) NOT NULL,
    last_name VARCHAR (255) NOT NULL,
    phone VARCHAR (25),
    email VARCHAR (255) NOT NULL,
    street VARCHAR (255),
    city VARCHAR (50),
    state VARCHAR (25),
    zip_code VARCHAR (5)
);

INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(1,'Debra','Burks',NULL,'debra.burks@yahoo.com','9273 Thorne Ave. ','Orchard Park','NY',14127);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(2,'Kasha','Todd',NULL,'kasha.todd@yahoo.com','910 Vine Street ','Campbell','CA',95008);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(3,'Tameka','Fisher',NULL,'tameka.fisher@aol.com','769C Honey Creek St. ','Redondo Beach','CA',90278);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(4,'Daryl','Spence',NULL,'daryl.spence@aol.com','988 Pearl Lane ','Uniondale','NY',11553);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(5,'Charolette','Rice','(916) 381-6003','charolette.rice@msn.com','107 River Dr. ','Sacramento','CA',95820);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(6,'Lyndsey','Bean',NULL,'lyndsey.bean@hotmail.com','769 West Road ','Fairport','NY',14450);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(7,'Latasha','Hays','(716) 986-3359','latasha.hays@hotmail.com','7014 Manor Station Rd. ','Buffalo','NY',14215);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(8,'Jacquline','Duncan',NULL,'jacquline.duncan@yahoo.com','15 Brown St. ','Jackson Heights','NY',11372);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(9,'Genoveva','Baldwin',NULL,'genoveva.baldwin@msn.com','8550 Spruce Drive ','Port Washington','NY',11050);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(10,'Pamelia','Newman',NULL,'pamelia.newman@gmail.com','476 Chestnut Ave. ','Monroe','NY',10950);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(11,'Deshawn','Mendoza',NULL,'deshawn.mendoza@yahoo.com','8790 Cobblestone Street ','Monsey','NY',10952);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(12,'Robby','Sykes','(516) 583-7761','robby.sykes@hotmail.com','486 Rock Maple Street ','Hempstead','NY',11550);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(13,'Lashawn','Ortiz',NULL,'lashawn.ortiz@msn.com','27 Washington Rd. ','Longview','TX',75604);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(14,'Garry','Espinoza',NULL,'garry.espinoza@hotmail.com','7858 Rockaway Court ','Forney','TX',75126);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(15,'Linnie','Branch',NULL,'linnie.branch@gmail.com','314 South Columbia Ave. ','Plattsburgh','NY',12901);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(16,'Emmitt','Sanchez','(212) 945-8823','emmitt.sanchez@hotmail.com','461 Squaw Creek Road ','New York','NY',10002);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(17,'Caren','Stephens',NULL,'caren.stephens@msn.com','914 Brook St. ','Scarsdale','NY',10583);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(18,'Georgetta','Hardin',NULL,'georgetta.hardin@aol.com','474 Chapel Dr. ','Canandaigua','NY',14424);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(19,'Lizzette','Stein',NULL,'lizzette.stein@yahoo.com','19 Green Hill Lane ','Orchard Park','NY',14127);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(20,'Aleta','Shepard',NULL,'aleta.shepard@aol.com','684 Howard St. ','Sugar Land','TX',77478);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(21,'Tobie','Little',NULL,'tobie.little@gmail.com','10 Silver Spear Dr. ','Victoria','TX',77904);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(22,'Adelle','Larsen',NULL,'adelle.larsen@gmail.com','683 West Kirkland Dr. ','East Northport','NY',11731);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(23,'Kaylee','English',NULL,'kaylee.english@msn.com','8786 Fulton Rd. ','Hollis','NY',11423);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(24,'Corene','Wall',NULL,'corene.wall@msn.com','9601 Ocean Rd. ','Atwater','CA',95301);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(25,'Regenia','Vaughan',NULL,'regenia.vaughan@gmail.com','44 Stonybrook Street ','Mahopac','NY',10541);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(26,'Theo','Reese','(562) 215-2907','theo.reese@gmail.com','8755 W. Wild Horse St. ','Long Beach','NY',11561);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(27,'Santos','Valencia',NULL,'santos.valencia@yahoo.com','7479 Carpenter Street ','Sunnyside','NY',11104);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(28,'Jeanice','Frost',NULL,'jeanice.frost@hotmail.com','76 Devon Lane ','Ossining','NY',10562);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(29,'Syreeta','Hendricks',NULL,'syreeta.hendricks@msn.com','193 Spruce Road ','Mahopac','NY',10541);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(30,'Jamaal','Albert',NULL,'jamaal.albert@gmail.com','853 Stonybrook Street ','Torrance','CA',90505);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(31,'Williemae','Holloway','(510) 246-8375','williemae.holloway@msn.com','69 Cypress St. ','Oakland','CA',94603);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(32,'Araceli','Golden',NULL,'araceli.golden@msn.com','12 Ridgeview Ave. ','Fullerton','CA',92831);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(33,'Deloris','Burke',NULL,'deloris.burke@hotmail.com','895 Edgemont Drive ','Palos Verdes Peninsula','CA',90274);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(34,'Brittney','Woodward',NULL,'brittney.woodward@aol.com','960 River St. ','East Northport','NY',11731);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(35,'Guillermina','Noble',NULL,'guillermina.noble@msn.com','6 Del Monte Lane ','Baldwinsville','NY',13027);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(36,'Bernita','Mcdaniel',NULL,'bernita.mcdaniel@hotmail.com','2 Peg Shop Ave. ','Liverpool','NY',13090);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(37,'Melia','Brady',NULL,'melia.brady@gmail.com','907 Shirley Rd. ','Maspeth','NY',11378);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(38,'Zelma','Browning',NULL,'zelma.browning@aol.com','296 Second Street ','Astoria','NY',11102);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(39,'Janetta','Aguirre','(717) 670-2634','janetta.aguirre@aol.com','214 Second Court ','Lancaster','NY',14086);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(40,'Ronna','Butler',NULL,'ronna.butler@gmail.com','9438 Plymouth Court ','Encino','CA',91316);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(41,'Kathie','Freeman',NULL,'kathie.freeman@msn.com','667 Temple Dr. ','Queensbury','NY',12804);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(42,'Tangela','Quinn',NULL,'tangela.quinn@aol.com','4 S. Purple Finch Road ','Richmond Hill','NY',11418);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(43,'Mozelle','Carter','(281) 489-9656','mozelle.carter@aol.com','895 Chestnut Ave. ','Houston','TX',77016);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(44,'Onita','Johns',NULL,'onita.johns@msn.com','32 Glen Creek Lane ','Elmont','NY',11003);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(45,'Bennett','Armstrong',NULL,'bennett.armstrong@aol.com','688 Walnut Street ','Bethpage','NY',11714);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(46,'Monika','Berg',NULL,'monika.berg@gmail.com','369 Vernon Dr. ','Encino','CA',91316);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(47,'Bridgette','Guerra',NULL,'bridgette.guerra@hotmail.com','9982 Manor Drive ','San Lorenzo','CA',94580);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(48,'Cesar','Jackson',NULL,'cesar.jackson@gmail.com','8068 N. Griffin Ave. ','Liverpool','NY',13090);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(49,'Caroll','Hays',NULL,'caroll.hays@yahoo.com','9381 Wrangler St. ','Fairport','NY',14450);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(50,'Cleotilde','Booth',NULL,'cleotilde.booth@gmail.com','17 Corona St. ','Sugar Land','TX',77478);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(51,'Gertrud','Rhodes',NULL,'gertrud.rhodes@aol.com','9961 Meadowbrook Street ','Merrick','NY',11566);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(52,'Tu','Ramirez',NULL,'tu.ramirez@hotmail.com','24 W. Courtland Street ','East Elmhurst','NY',11369);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(53,'Saturnina','Garner',NULL,'saturnina.garner@gmail.com','8538 Fairground St. ','Glendora','CA',91740);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(54,'Fran','Yang',NULL,'fran.yang@hotmail.com','440 Pearl St. ','Utica','NY',13501);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(55,'Diana','Guerra',NULL,'diana.guerra@hotmail.com','45 Chapel Ave. ','Merrick','NY',11566);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(56,'Lolita','Mosley','(281) 363-3309','lolita.mosley@hotmail.com','376 S. High Ridge St. ','Houston','TX',77016);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(57,'Pamala','Henry',NULL,'pamala.henry@aol.com','197 Bridgeton Ave. ','Bronx','NY',10451);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(58,'Damien','Dorsey',NULL,'damien.dorsey@yahoo.com','161 Old York Street ','Central Islip','NY',11722);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(59,'Latasha','Stanley',NULL,'latasha.stanley@gmail.com','8068 Fordham Drive ','Rockville Centre','NY',11570);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(60,'Neil','Mccall',NULL,'neil.mccall@gmail.com','7476 Oakland Dr. ','San Carlos','CA',94070);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(61,'Elinore','Aguilar',NULL,'elinore.aguilar@msn.com','9766 Rockcrest Ave. ','San Angelo','TX',76901);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(62,'Alica','Hunter',NULL,'alica.hunter@hotmail.com','8 San Juan Drive ','East Elmhurst','NY',11369);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(63,'Tenisha','Lyons',NULL,'tenisha.lyons@aol.com','78 E. Rock Creek Street ','Amityville','NY',11701);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(64,'Bobbie','Foster',NULL,'bobbie.foster@yahoo.com','988 Pineknoll Ave. ','Desoto','TX',75115);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(65,'Kanesha','Vega',NULL,'kanesha.vega@gmail.com','771 E. Oxford Drive ','Rome','NY',13440);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(66,'Lorrie','Becker',NULL,'lorrie.becker@yahoo.com','19 North Court ','Garland','TX',75043);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(67,'Tommie','Melton','(916) 802-2952','tommie.melton@gmail.com','8 West Old York St. ','Sacramento','CA',95820);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(68,'Jayne','Kirkland',NULL,'jayne.kirkland@hotmail.com','7800 Second Lane ','Rowlett','TX',75088);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(69,'Katelin','Kennedy',NULL,'katelin.kennedy@gmail.com','286 Myrtle Lane ','Rocklin','CA',95677);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(70,'Tomasa','Carson',NULL,'tomasa.carson@aol.com','10 Clark Avenue ','East Elmhurst','NY',11369);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(71,'Takako','Casey',NULL,'takako.casey@aol.com','7548 Court Lane ','Bronx','NY',10451);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(72,'Petronila','Norris',NULL,'petronila.norris@aol.com','72 South Marshall Lane ','South El Monte','CA',91733);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(73,'Melanie','Hayes',NULL,'melanie.hayes@msn.com','5 N. Hall Dr. ','Liverpool','NY',13090);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(74,'Georgeann','Waller',NULL,'georgeann.waller@yahoo.com','9797 Bald Hill Ave. ','North Tonawanda','NY',14120);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(75,'Abby','Gamble',NULL,'abby.gamble@aol.com','60 Myers Dr. ','Amityville','NY',11701);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(76,'Parker','Prince',NULL,'parker.prince@hotmail.com','21 Sulphur Springs Drive ','Port Jefferson Station','NY',11776);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(77,'Keri','Bridges',NULL,'keri.bridges@gmail.com','8504 Brickell Ave. ','Richardson','TX',75080);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(78,'Chi','Goff',NULL,'chi.goff@aol.com','3 W. Glen Ridge Avenue ','Palos Verdes Peninsula','CA',90274);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(79,'Ashanti','Parks',NULL,'ashanti.parks@hotmail.com','846 N. Helen St. ','Baldwin','NY',11510);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(80,'Sarai','Mckee','(716) 912-8110','sarai.mckee@msn.com','641 Glenwood Avenue ','Buffalo','NY',14215);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(81,'Zina','Bonner',NULL,'zina.bonner@hotmail.com','9312 8th Street ','San Lorenzo','CA',94580);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(82,'Lizzie','Joyner',NULL,'lizzie.joyner@msn.com','8541 Roberts St. ','Coachella','CA',92236);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(83,'Tiesha','Daniel',NULL,'tiesha.daniel@yahoo.com','6 West Bohemia Lane ','Scarsdale','NY',10583);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(84,'Armand','Whitehead',NULL,'armand.whitehead@hotmail.com','639 Harvey St. ','Lindenhurst','NY',11757);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(85,'Teofila','Fischer',NULL,'teofila.fischer@aol.com','1 West Brickyard St. ','Huntington Station','NY',11746);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(86,'Lissa','Vargas',NULL,'lissa.vargas@yahoo.com','517 Victoria Ave. ','Oswego','NY',13126);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(87,'Yan','Mcgowan',NULL,'yan.mcgowan@msn.com','8960 Newport Ave. ','Duarte','CA',91010);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(88,'Titus','Bullock',NULL,'titus.bullock@gmail.com','29 Oxford Avenue ','Hollis','NY',11423);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(89,'Arvilla','Osborn',NULL,'arvilla.osborn@gmail.com','60 Acacia Lane ','Upland','CA',91784);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(90,'Marjorie','Logan',NULL,'marjorie.logan@msn.com','95 Grandrose St. ','Franklin Square','NY',11010);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(91,'Marvin','Mullins','(619) 635-2027','marvin.mullins@aol.com','7489 Redwood Drive ','San Diego','CA',92111);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(92,'Tena','Cruz',NULL,'tena.cruz@yahoo.com','1 South St. ','Farmingdale','NY',11735);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(93,'Corrina','Sawyer','(248) 370-1364','corrina.sawyer@yahoo.com','95 Briarwood Lane ','Troy','NY',12180);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(94,'Sharyn','Hopkins',NULL,'sharyn.hopkins@hotmail.com','4 South Temple Ave. ','Baldwinsville','NY',13027);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(95,'Letitia','Franco',NULL,'letitia.franco@aol.com','607 Lakeview Drive ','Saratoga Springs','NY',12866);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(96,'Floretta','Higgins',NULL,'floretta.higgins@hotmail.com','870 Lilac Dr. ','Bayside','NY',11361);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(97,'Louanne','Martin',NULL,'louanne.martin@hotmail.com','1 Campfire Ave. ','Yuba City','CA',95993);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(98,'Violet','Valenzuela',NULL,'violet.valenzuela@msn.com','8668 Piper Street ','Plattsburgh','NY',12901);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(99,'Carie','Kidd',NULL,'carie.kidd@yahoo.com','6 East Clinton Street ','Monroe','NY',10950);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(100,'Kellie','Franco',NULL,'kellie.franco@yahoo.com','444 South Walnut Rd. ','Commack','NY',11725);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(101,'Nichelle','Howell',NULL,'nichelle.howell@aol.com','7670 Forest St. ','Scarsdale','NY',10583);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(102,'Marisol','Goodman',NULL,'marisol.goodman@gmail.com','864 East Cherry St. ','Canandaigua','NY',14424);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(103,'Sylvie','Wilkerson',NULL,'sylvie.wilkerson@yahoo.com','750 Central Ave. ','Syosset','NY',11791);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(104,'Katharina','Bates',NULL,'katharina.bates@gmail.com','54 South Greenview Drive ','Campbell','CA',95008);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(105,'Marget','Hodge',NULL,'marget.hodge@msn.com','7199 Selby Lane ','Woodhaven','NY',11421);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(106,'Raul','Melendez',NULL,'raul.melendez@hotmail.com','9772 Manhattan St. ','Elmhurst','NY',11373);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(107,'Cecil','Hopper',NULL,'cecil.hopper@yahoo.com','471 Glenlake Ave. ','Central Islip','NY',11722);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(108,'Shae','Hickman',NULL,'shae.hickman@hotmail.com','740 Pin Oak Street ','Floral Park','NY',11001);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(109,'Monica','Sears','(408) 704-8863','monica.sears@aol.com','57 Glenholme St. ','San Jose','CA',95127);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(110,'Ollie','Zimmerman','(657) 648-2863','ollie.zimmerman@yahoo.com','69 Wood Rd. ','Anaheim','CA',92806);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(111,'Shila','White',NULL,'shila.white@msn.com','94 Lakeshore Street ','Orchard Park','NY',14127);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(112,'Yuk','Vega',NULL,'yuk.vega@yahoo.com','413 Wood St. ','West Hempstead','NY',11552);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(113,'Eliana','Silva',NULL,'eliana.silva@gmail.com','7119 Summer Rd. ','Farmingdale','NY',11735);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(114,'Thalia','Horne',NULL,'thalia.horne@yahoo.com','9312 Harvard Street ','Amityville','NY',11701);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(115,'Rey','Lindsay',NULL,'rey.lindsay@gmail.com','16 Philmont St. ','Monroe','NY',10950);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(116,'Merlene','Vinson',NULL,'merlene.vinson@gmail.com','431 Vine Dr. ','Euless','TX',76039);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(117,'Dacia','William',NULL,'dacia.william@msn.com','62 Cypress Drive ','Sugar Land','TX',77478);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(118,'Le','Wood',NULL,'le.wood@yahoo.com','90 Primrose Dr. ','Pittsford','NY',14534);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(119,'Thalia','Dillard',NULL,'thalia.dillard@yahoo.com','987 NE. Gates Street ','San Angelo','TX',76901);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(120,'Luz','House','(559) 114-2580','luz.house@gmail.com','491 Railroad Street ','Fresno','CA',93706);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(121,'Lucy','Woods',NULL,'lucy.woods@gmail.com','8437 West Rockaway St. ','Palos Verdes Peninsula','CA',90274);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(122,'Shena','Carter',NULL,'shena.carter@yahoo.com','72 University Road ','Howard Beach','NY',11414);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(123,'Robena','Hill','(361) 598-4414','robena.hill@hotmail.com','263 Cross St. ','Corpus Christi','TX',78418);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(124,'Jeni','Booker',NULL,'jeni.booker@gmail.com','546 Railroad Dr. ','South El Monte','CA',91733);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(125,'Herlinda','Stone',NULL,'herlinda.stone@msn.com','725 Gulf St. ','Canandaigua','NY',14424);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(126,'Lavina','Dejesus',NULL,'lavina.dejesus@msn.com','59 E. Valley Avenue ','Newburgh','NY',12550);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(127,'Erlinda','Nielsen',NULL,'erlinda.nielsen@aol.com','728 Oxford Lane ','Maspeth','NY',11378);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(128,'Terrance','Lynn',NULL,'terrance.lynn@yahoo.com','91 East Buckingham Drive ','Plattsburgh','NY',12901);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(129,'Walton','Dejesus',NULL,'walton.dejesus@yahoo.com','15 Washington Rd. ','Lockport','NY',14094);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(130,'Wes','Stanton','(248) 247-5074','wes.stanton@msn.com','8662 Tunnel Street ','Troy','NY',12180);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(131,'Tanesha','Hampton',NULL,'tanesha.hampton@hotmail.com','19 Belmont Ave. ','Syosset','NY',11791);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(132,'Boyd','Irwin',NULL,'boyd.irwin@hotmail.com','221 Whitemarsh St. ','Hamburg','NY',14075);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(133,'Delbert','Wilkins',NULL,'delbert.wilkins@aol.com','420 Greenview St. ','Coram','NY',11727);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(134,'Brianna','Moss','(516) 156-8031','brianna.moss@msn.com','4 Longfellow St. ','Hempstead','NY',11550);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(135,'Dorthey','Jackson','(281) 926-8010','dorthey.jackson@msn.com','9768 Brookside St. ','Houston','TX',77016);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(136,'Sarita','Parks',NULL,'sarita.parks@msn.com','7809 Second Lane ','Forney','TX',75126);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(137,'Shonta','Mercer',NULL,'shonta.mercer@aol.com','319 NE. La Sierra Avenue ','Massapequa','NY',11758);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(138,'Jone','Bernard','(657) 536-5165','jone.bernard@hotmail.com','99 Longbranch Court ','Anaheim','CA',92806);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(139,'Wanita','Davenport',NULL,'wanita.davenport@aol.com','525 Dogwood Ave. ','Spring Valley','NY',10977);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(140,'Cleopatra','Tate',NULL,'cleopatra.tate@aol.com','97 N. Glenwood St. ','East Elmhurst','NY',11369);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(141,'Ramiro','Byers',NULL,'ramiro.byers@gmail.com','16 Pleasant St. ','Saint Albans','NY',11412);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(142,'Nicholas','Vazquez',NULL,'nicholas.vazquez@hotmail.com','9 Roosevelt Street ','West Hempstead','NY',11552);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(143,'Janae','Doyle',NULL,'janae.doyle@gmail.com','760 Rose Ave. ','Jackson Heights','NY',11372);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(144,'Hans','Price',NULL,'hans.price@hotmail.com','51 Glendale Road ','Port Chester','NY',10573);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(145,'Miquel','Neal',NULL,'miquel.neal@hotmail.com','9564 Deerfield Lane ','Staten Island','NY',10301);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(146,'Stefany','Potter',NULL,'stefany.potter@gmail.com','256 South Academy St. ','Saratoga Springs','NY',12866);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(147,'Bernetta','Marquez',NULL,'bernetta.marquez@hotmail.com','626 E. Dunbar Street ','Smithtown','NY',11787);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(148,'Julee','Woodard',NULL,'julee.woodard@yahoo.com','869 Summerhouse Dr. ','Richmond Hill','NY',11418);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(149,'Meredith','Bryan',NULL,'meredith.bryan@hotmail.com','8935 E. Oxford St. ','Spring Valley','NY',10977);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(150,'Weldon','Michael',NULL,'weldon.michael@hotmail.com','9952 Nut Swamp St. ','Huntington','NY',11743);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(151,'Joesph','Delacruz',NULL,'joesph.delacruz@aol.com','184 Cypress Street ','Atwater','CA',95301);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(152,'Katherina','Odom',NULL,'katherina.odom@yahoo.com','897 N. Oak Drive ','Plainview','NY',11803);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(153,'Laraine','Robbins',NULL,'laraine.robbins@yahoo.com','8214 E. Pin Oak Lane ','San Angelo','TX',76901);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(154,'Jenise','Preston',NULL,'jenise.preston@yahoo.com','9 Littleton Drive ','Helotes','TX',78023);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(155,'Lory','Page',NULL,'lory.page@hotmail.com','58 Summerhouse Street ','Bay Shore','NY',11706);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(156,'Charlyn','Cantrell',NULL,'charlyn.cantrell@yahoo.com','8756 Euclid St. ','West Islip','NY',11795);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(157,'Carola','Rodriquez',NULL,'carola.rodriquez@hotmail.com','9433 Heritage Lane ','Banning','CA',92220);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(158,'Alane','Kennedy',NULL,'alane.kennedy@yahoo.com','34 Green Lake Street ','Spring Valley','NY',10977);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(159,'Regina','Burns',NULL,'regina.burns@aol.com','713 Buckingham St. ','Garland','TX',75043);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(160,'Omer','Estrada',NULL,'omer.estrada@gmail.com','9 Honey Creek Street ','Rowlett','TX',75088);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(161,'Crystle','Gilliam',NULL,'crystle.gilliam@yahoo.com','86 Edgewater Road ','Smithtown','NY',11787);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(162,'Kam','Wilder',NULL,'kam.wilder@hotmail.com','500 West Clay Ave. ','Newburgh','NY',12550);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(163,'Margert','Stevens',NULL,'margert.stevens@aol.com','502 North Poplar St. ','Rome','NY',13440);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(164,'Tomika','Larson',NULL,'tomika.larson@yahoo.com','254 Canal St. ','Woodside','NY',11377);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(165,'Jeromy','Burch','(408) 955-8238','jeromy.burch@msn.com','889 Mulberry Street ','San Jose','CA',95127);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(166,'Lena','Mills',NULL,'lena.mills@yahoo.com','42 Homestead St. ','Woodhaven','NY',11421);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(167,'Loreta','Johnston',NULL,'loreta.johnston@yahoo.com','39 Lafayette Dr. ','Spring Valley','NY',10977);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(168,'Nettie','Mcdaniel',NULL,'nettie.mcdaniel@hotmail.com','7004 E. Wakehurst St. ','South Ozone Park','NY',11420);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(169,'Karla','Kirk',NULL,'karla.kirk@yahoo.com','9718 Harvard Rd. ','Palos Verdes Peninsula','CA',90274);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(170,'Regine','Gonzales','(805) 763-4045','regine.gonzales@gmail.com','798 Court Drive ','Oxnard','CA',93035);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(171,'Miriam','Baker',NULL,'miriam.baker@hotmail.com','90 Studebaker St. ','Uniondale','NY',11553);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(172,'Jeanie','Kirkland',NULL,'jeanie.kirkland@aol.com','7643 Old Theatre St. ','Santa Clara','CA',95050);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(173,'Marquerite','Dawson',NULL,'marquerite.dawson@gmail.com','37 Hamilton Court ','Garland','TX',75043);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(174,'Babara','Ochoa',NULL,'babara.ochoa@aol.com','872 Smith Store St. ','Scarsdale','NY',10583);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(175,'Nova','Hess',NULL,'nova.hess@msn.com','773 South Lafayette St. ','Duarte','CA',91010);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(176,'Carley','Reynolds',NULL,'carley.reynolds@gmail.com','2 Snake Hill Drive ','South El Monte','CA',91733);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(177,'Carissa','Foreman',NULL,'carissa.foreman@msn.com','69C N. Ridge Rd. ','Maspeth','NY',11378);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(178,'Genoveva','Tyler','(212) 152-6381','genoveva.tyler@gmail.com','8121 Windfall Ave. ','New York','NY',10002);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(179,'Deane','Sears',NULL,'deane.sears@hotmail.com','3 Bradford Court ','Pittsford','NY',14534);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(180,'Karey','Steele',NULL,'karey.steele@gmail.com','8879 Kent Lane ','Farmingdale','NY',11735);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(181,'Olevia','Pitts',NULL,'olevia.pitts@gmail.com','39 Fieldstone Drive ','Redondo Beach','CA',90278);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(182,'Jenniffer','Bullock',NULL,'jenniffer.bullock@msn.com','38 Oxford Avenue ','Bay Shore','NY',11706);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(183,'Jeniffer','Ratliff',NULL,'jeniffer.ratliff@gmail.com','510 Rocky River Court ','Floral Park','NY',11001);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(184,'Klara','Stanley',NULL,'klara.stanley@aol.com','603 Mechanic St. ','Webster','NY',14580);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(185,'Morton','Lee',NULL,'morton.lee@yahoo.com','313 Ridge St. ','San Angelo','TX',76901);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(186,'Ken','Charles',NULL,'ken.charles@msn.com','9124 W. Piper Lane ','Monsey','NY',10952);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(187,'Hedwig','Paul',NULL,'hedwig.paul@msn.com','422 Manor Ave. ','Apple Valley','CA',92307);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(188,'Sharla','Flynn','(805) 478-7724','sharla.flynn@hotmail.com','7 Brown Drive ','Oxnard','CA',93035);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(189,'Damian','Dawson',NULL,'damian.dawson@hotmail.com','528 St Margarets Street ','Liverpool','NY',13090);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(190,'Toya','Pratt','(562) 218-6405','toya.pratt@yahoo.com','485 San Pablo Drive ','Long Beach','NY',11561);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(191,'Graciela','Barber','(805) 656-6987','graciela.barber@hotmail.com','1 E. Young St. ','Oxnard','CA',93035);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(192,'Bong','Hebert',NULL,'bong.hebert@gmail.com','545 Brook St. ','Torrance','CA',90505);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(193,'Ayanna','Rhodes',NULL,'ayanna.rhodes@msn.com','7425 Pheasant St. ','Hicksville','NY',11801);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(194,'Dorine','Roberson',NULL,'dorine.roberson@msn.com','396 Meadowbrook Lane ','Santa Cruz','CA',95060);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(195,'Addie','Hahn',NULL,'addie.hahn@hotmail.com','8165 Baker Ave. ','Franklin Square','NY',11010);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(196,'Edythe','Valencia',NULL,'edythe.valencia@yahoo.com','9346 Wall St. ','North Tonawanda','NY',14120);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(197,'Andy','O''neill',NULL,'andy.o''neill@msn.com','9544 Mulberry Drive ','Rego Park','NY',11374);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(198,'Luis','Tyler',NULL,'luis.tyler@gmail.com','9568 Campfire Circle ','Amarillo','TX',79106);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(199,'Clelia','Workman',NULL,'clelia.workman@yahoo.com','620 North Somerset St. ','New Windsor','NY',12553);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(200,'Ashely','Holmes',NULL,'ashely.holmes@aol.com','45 High Ridge Ave. ','Farmingdale','NY',11735);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(201,'Candis','Harding',NULL,'candis.harding@gmail.com','33 NW. Cambridge Ave. ','Ballston Spa','NY',12020);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(202,'Marni','Bolton','(717) 670-6268','marni.bolton@msn.com','7469 Plymouth Ave. ','Lancaster','NY',14086);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(203,'Minerva','Decker','(281) 271-6390','minerva.decker@yahoo.com','794 Greenrose Street ','Houston','TX',77016);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(204,'Alpha','King',NULL,'alpha.king@hotmail.com','14 Henry Smith St. ','Rockville Centre','NY',11570);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(205,'Harris','Pittman',NULL,'harris.pittman@yahoo.com','404 Cherry Hill Road ','Jamaica','NY',11432);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(206,'Stephaine','Riddle',NULL,'stephaine.riddle@hotmail.com','199 Vermont Court ','Brooklyn','NY',11201);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(207,'Michel','Blankenship',NULL,'michel.blankenship@msn.com','382 West Hill Dr. ','Forney','TX',75126);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(208,'Denis','Logan',NULL,'denis.logan@msn.com','121 Rockcrest Street ','Ridgecrest','CA',93555);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(209,'Jutta','Everett',NULL,'jutta.everett@gmail.com','27 Taylor Ave. ','Selden','NY',11784);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(210,'Priscilla','Wilkins','(229) 322-2269','priscilla.wilkins@aol.com','653 Pawnee Rd. ','Albany','NY',12203);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(211,'Gilma','Dejesus',NULL,'gilma.dejesus@yahoo.com','777 Thompson Ave. ','Scarsdale','NY',10583);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(212,'Buford','Bridges','(248) 604-7346','buford.bridges@msn.com','239 Oak Valley Court ','Troy','NY',12180);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(213,'Elenore','Hensley',NULL,'elenore.hensley@hotmail.com','7037 Aspen St. ','Hamburg','NY',14075);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(214,'Ross','Pugh',NULL,'ross.pugh@msn.com','8598 Saxon St. ','North Tonawanda','NY',14120);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(215,'Judith','Finley',NULL,'judith.finley@hotmail.com','474 West Bank Road ','Whitestone','NY',11357);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(216,'Wai','Soto',NULL,'wai.soto@msn.com','30 Arch Drive ','Bethpage','NY',11714);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(217,'Carline','Collier','(559) 810-6070','carline.collier@msn.com','28 Trenton Lane ','Fresno','CA',93706);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(218,'Casey','Gill',NULL,'casey.gill@gmail.com','636 Prospect Avenue ','Port Washington','NY',11050);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(219,'Darcie','Morgan','(442) 618-7068','darcie.morgan@aol.com','476 East Adams Ave. ','Oceanside','NY',11572);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(220,'Lucio','Sherman',NULL,'lucio.sherman@gmail.com','842 Corona Ave. ','Smithtown','NY',11787);
INSERT INTO sales.customers(customer_id, first_name, last_name, phone, email, street, city, state, zip_code) VALUES(221,'Clementine','Mooney',NULL,'clementine.mooney@yahoo.com','678 Charles Court ','Mcallen','TX',78501);

CREATE TABLE sales.stores (
    store_id INT PRIMARY KEY,
    store_name VARCHAR (255) NOT NULL,
    phone VARCHAR (25),
    email VARCHAR (255),
    street VARCHAR (255),
    city VARCHAR (255),
    state VARCHAR (10),
    zip_code VARCHAR (5)
);

INSERT INTO sales.stores(store_id,store_name, phone, email, street, city, state, zip_code)
VALUES(11,'Santa Cruz Bikes','(831) 476-4321','santacruz@bikes.shop','3700 Portola Drive', 'Santa Cruz','CA',95060),
      (13,'Baldwin Bikes','(516) 379-8888','baldwin@bikes.shop','4200 Chestnut Lane', 'Baldwin','NY',11432),
      (17,'Rowlett Bikes','(972) 530-5555','rowlett@bikes.shop','8000 Fairway Avenue', 'Rowlett','TX',75088);

UPDATE sales.stores SET store_id = 1 WHERE store_name = 'Santa Cruz Bikes';
UPDATE sales.stores SET store_id = 2 WHERE store_name = 'Baldwin Bikes';
UPDATE sales.stores SET store_id = 3 WHERE store_name = 'Rowlett Bikes';


CREATE TABLE production.stocks (
    store_id INT,
    product_id INT,
    quantity INT,
    PRIMARY KEY (store_id, product_id),
    FOREIGN KEY (store_id) REFERENCES sales.stores (store_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (product_id) REFERENCES production.products (product_id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,1,27);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,2,5);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,3,6);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,4,23);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,5,22);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,6,0);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,7,8);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,8,0);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,9,11);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,10,15);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,11,8);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,12,16);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,13,13);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,14,8);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,15,3);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,16,4);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,17,2);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,18,16);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,19,4);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,20,26);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,21,24);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,22,29);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,23,9);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,24,10);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,25,10);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,26,16);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,27,21);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,28,20);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,29,13);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,30,30);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,31,2);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,32,0);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,33,10);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,34,2);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,35,18);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,36,26);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,37,12);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,38,13);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,39,2);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,40,24);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,41,10);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,42,0);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,43,2);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,44,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,45,15);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,46,19);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,47,21);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,48,5);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,49,8);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,50,29);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,51,2);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,52,18);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,53,17);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,54,11);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,55,11);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,56,15);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,57,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,58,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,59,22);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,60,19);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,61,30);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,62,21);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,63,4);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,64,30);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,65,10);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,66,12);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,67,19);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,68,30);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,69,4);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,70,3);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,71,25);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,72,9);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,73,7);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,74,9);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,75,23);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,76,15);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,77,16);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,78,13);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,79,13);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,80,11);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,81,25);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,82,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,83,13);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,84,11);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,85,23);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,86,19);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,87,27);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,88,7);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,89,9);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,90,4);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,91,8);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,92,0);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,93,22);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,94,6);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,95,25);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,96,20);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,97,20);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,98,28);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,99,28);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,100,15);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,101,17);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,102,9);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,103,13);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,104,25);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,105,7);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,106,30);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,107,20);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,108,15);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,109,30);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,110,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,111,11);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,112,17);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,113,24);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,114,3);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,115,10);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,116,24);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,117,15);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,118,12);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,119,17);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,120,23);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,121,19);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,122,22);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,123,8);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,124,23);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,125,22);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,126,28);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,127,12);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,128,11);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,129,21);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,130,22);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,131,20);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,132,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,133,9);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,134,26);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,135,15);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,136,12);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,137,12);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,138,6);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,139,17);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,140,3);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,141,21);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,142,22);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,143,19);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,144,7);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,145,5);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,146,6);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,147,8);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,148,6);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,149,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,150,22);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,151,24);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,152,12);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,153,25);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,154,13);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,155,8);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,156,13);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,157,25);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,158,11);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,159,18);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,160,0);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,161,17);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,162,14);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,163,0);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,164,15);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,165,16);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,166,23);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,167,28);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,168,0);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,169,25);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,170,14);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,171,3);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,172,3);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,173,2);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,174,26);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,175,2);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,176,11);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,177,19);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,178,23);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,179,16);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,180,5);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,181,19);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,182,28);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,183,11);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,184,4);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,185,3);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,186,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,187,16);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,188,30);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,189,6);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,190,21);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,191,21);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,192,20);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,193,30);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,194,24);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,195,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,196,26);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,197,22);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,198,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,199,2);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,200,27);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,201,16);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,202,5);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,203,4);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,204,23);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,205,9);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,206,10);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,207,27);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,208,13);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,209,22);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,210,25);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,211,13);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,212,17);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,213,14);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,214,4);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,215,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,216,11);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,217,11);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,218,27);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,219,30);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,220,4);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,221,7);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,222,12);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,223,3);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,224,16);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,225,24);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,287,2);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,288,9);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,289,2);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,290,8);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,291,9);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,292,30);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,293,18);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,294,3);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,295,24);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,296,9);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,297,22);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,298,26);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,299,18);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,300,7);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,301,10);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,302,0);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,303,12);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,304,15);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,305,23);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,306,21);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,307,17);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,308,23);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,309,7);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,310,18);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,311,20);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,312,23);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(1,313,14);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,1,14);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,2,16);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,3,28);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,4,2);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,5,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,6,11);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,7,8);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,8,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,9,17);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,10,13);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,11,21);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,12,2);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,13,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,14,18);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,15,6);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,16,20);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,17,3);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,18,13);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,19,15);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,20,20);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,21,16);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,22,0);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,23,12);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,24,16);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,25,18);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,26,2);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,27,10);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,28,25);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,29,29);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,30,17);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,31,10);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,32,13);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,33,8);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,34,24);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,35,25);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,36,15);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,37,5);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,38,18);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,39,28);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,40,15);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,41,6);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,42,16);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,43,2);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,44,24);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,45,13);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,46,18);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,47,0);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,48,20);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,49,4);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,50,7);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,51,8);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,52,23);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,53,19);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,54,6);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,55,5);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,56,20);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,57,27);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,58,15);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,59,17);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,60,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,61,20);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,62,4);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,63,5);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,64,30);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,65,16);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,66,22);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,67,8);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,68,23);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,69,22);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,70,6);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,71,30);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,72,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,73,20);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,74,23);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,75,11);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,76,20);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,77,25);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,78,4);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,79,29);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,80,27);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,81,19);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,82,4);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,83,21);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,84,22);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,85,6);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,86,24);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,87,14);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,88,8);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,89,8);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,90,26);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,91,0);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,92,22);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,93,22);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,94,2);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,95,10);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,96,22);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,97,15);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,98,14);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,99,24);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,100,12);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,101,4);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,102,12);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,103,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,104,26);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,105,3);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,106,7);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,107,29);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,108,29);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,109,25);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,110,7);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,111,6);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,112,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,113,7);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,114,12);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,115,19);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,116,17);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,117,18);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,118,25);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,119,23);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,120,16);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,121,3);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,122,11);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,123,18);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,124,4);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,125,10);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,126,13);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,127,12);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,128,28);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,129,21);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,130,17);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,131,9);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,132,6);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,133,28);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,134,13);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,135,30);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,136,8);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,137,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,138,16);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,139,24);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,140,13);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,141,28);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,142,24);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,143,12);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,144,4);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,145,23);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,146,3);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,147,13);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,148,27);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,149,22);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,150,7);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,151,2);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,152,21);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,153,21);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,154,9);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,155,21);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,156,8);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,157,28);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,158,0);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,159,30);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,160,4);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,161,9);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,162,18);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,163,30);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,164,9);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,165,6);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,166,27);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,167,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,168,29);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,169,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(2,170,2);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,2,24);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,3,0);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,4,11);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,5,3);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,6,27);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,7,12);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,8,12);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,9,23);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,10,21);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,11,30);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,12,30);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,13,19);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,14,4);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,15,22);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,16,19);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,17,22);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,18,5);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,19,24);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,20,19);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,21,8);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,22,20);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,23,8);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,24,18);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,25,15);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,26,27);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,27,21);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,28,20);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,29,11);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,30,23);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,31,10);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,32,14);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,33,14);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,34,6);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,35,3);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,36,28);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,37,30);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,38,23);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,39,22);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,40,2);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,41,25);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,42,9);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,43,26);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,44,26);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,45,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,46,16);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,47,14);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,48,2);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,49,4);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,50,25);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,51,2);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,52,8);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,53,6);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,54,13);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,55,5);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,56,19);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,57,9);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,58,27);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,59,0);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,60,7);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,61,28);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,62,4);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,63,8);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,64,22);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,65,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,66,3);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,67,6);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,68,18);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,69,29);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,70,2);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,71,13);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,72,6);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,73,3);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,74,17);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,75,29);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,76,23);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,77,23);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,78,19);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,79,29);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,80,22);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,81,18);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,82,7);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,83,23);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,84,15);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,85,15);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,86,27);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,87,16);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,88,28);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,89,22);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,90,9);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,91,8);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,92,28);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,93,18);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,94,15);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,95,14);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,96,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,97,28);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,98,5);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,99,19);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,100,28);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,101,17);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,102,22);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,103,10);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,104,22);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,105,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,106,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,107,11);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,108,23);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,109,24);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,110,11);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,111,29);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,112,24);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,113,23);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,114,12);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,115,25);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,116,30);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,117,23);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,118,9);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,119,29);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,120,25);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,121,4);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,122,8);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,123,15);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,124,11);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,125,2);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,126,5);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,127,4);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,128,20);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,129,10);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,130,20);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,131,23);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,132,16);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,133,16);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,134,17);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,135,15);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,136,4);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,137,17);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,138,17);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,139,21);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,140,3);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,141,4);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,142,29);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,143,9);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,144,9);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,145,11);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,146,9);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,147,3);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,148,6);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,149,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,150,21);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,151,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,152,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,153,7);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,154,22);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,155,25);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,156,14);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,157,12);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,158,17);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,159,6);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,160,27);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,161,11);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,162,11);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,163,11);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,164,18);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,165,19);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,166,27);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,167,8);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,168,23);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,169,3);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,170,13);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,171,11);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,172,22);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,173,15);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,174,1);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,175,3);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,176,6);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,177,2);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,178,12);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,179,20);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,180,6);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,181,8);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,182,28);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,183,26);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,184,21);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,185,15);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,186,30);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,187,2);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,188,29);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,189,20);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,190,20);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,191,23);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,192,10);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,193,5);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,194,20);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,195,20);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,196,25);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,197,8);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,198,27);
INSERT INTO production.stocks(store_id, product_id, quantity) VALUES(3,199,5);

CREATE TABLE sales.staffs (
    staff_id INT  PRIMARY KEY,
    first_name VARCHAR (50) NOT NULL,
    last_name VARCHAR (50) NOT NULL,
    email VARCHAR (255) NOT NULL UNIQUE,
    phone VARCHAR (25),
    active tinyint NOT NULL,
    store_id INT NOT NULL,
    manager_id INT,
    FOREIGN KEY (store_id) REFERENCES sales.stores (store_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (manager_id) REFERENCES sales.staffs (staff_id) ON DELETE NO ACTION ON UPDATE NO ACTION
);

INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(1,'Fabiola','Jackson','fabiola.jackson@bikes.shop','(831) 555-5554',1,1,NULL);
INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(2,'Mireya','Copeland','mireya.copeland@bikes.shop','(831) 555-5555',1,1,1);
INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(3,'Genna','Serrano','genna.serrano@bikes.shop','(831) 555-5556',1,1,2);
INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(4,'Virgie','Wiggins','virgie.wiggins@bikes.shop','(831) 555-5557',1,1,2);
INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(5,'Jannette','David','jannette.david@bikes.shop','(516) 379-4444',1,2,1);
INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(6,'Marcelene','Boyer','marcelene.boyer@bikes.shop','(516) 379-4445',1,2,5);
INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(7,'Venita','Daniel','venita.daniel@bikes.shop','(516) 379-4446',1,2,5);
INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(8,'Kali','Vargas','kali.vargas@bikes.shop','(972) 530-5555',1,3,1);
INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(9,'Layla','Terrell','layla.terrell@bikes.shop','(972) 530-5556',1,3,7);
INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(10,'Bernardine','Houston','bernardine.houston@bikes.shop','(972) 530-5557',1,3,7);

CREATE TABLE sales.orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_status tinyint NOT NULL,
    -- Order status: 1 = Pending; 2 = Processing; 3 = Rejected; 4 = Completed
    order_date DATE NOT NULL,
    required_date DATE NOT NULL,
    shipped_date DATE,
    store_id INT NOT NULL,
    staff_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES sales.customers (customer_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (store_id) REFERENCES sales.stores (store_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (staff_id) REFERENCES sales.staffs (staff_id) ON DELETE NO ACTION ON UPDATE NO ACTION
);

INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(1,1,4,'20160101','20160103','20160103',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(2,2,4,'20160101','20160104','20160103',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(3,3,4,'20160102','20160105','20160103',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(4,4,4,'20160103','20160104','20160105',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(5,5,4,'20160103','20160106','20160106',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(6,6,4,'20160104','20160107','20160105',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(7,7,4,'20160104','20160107','20160105',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(8,8,4,'20160104','20160105','20160105',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(9,9,4,'20160105','20160108','20160108',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(10,10,4,'20160105','20160106','20160106',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(11,11,4,'20160105','20160108','20160107',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(12,12,4,'20160106','20160108','20160109',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(13,13,4,'20160108','20160111','20160111',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(14,14,4,'20160109','20160111','20160112',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(15,15,4,'20160109','20160110','20160112',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(16,16,4,'20160112','20160115','20160115',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(17,17,4,'20160112','20160114','20160114',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(18,18,4,'20160114','20160117','20160115',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(19,19,4,'20160114','20160117','20160116',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(20,20,4,'20160114','20160116','20160117',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(21,21,4,'20160115','20160116','20160118',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(22,22,4,'20160116','20160118','20160117',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(23,23,4,'20160116','20160119','20160119',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(24,24,4,'20160118','20160120','20160119',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(25,25,4,'20160118','20160121','20160121',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(26,26,4,'20160118','20160121','20160119',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(27,27,4,'20160119','20160121','20160120',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(28,28,4,'20160119','20160120','20160121',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(29,29,4,'20160120','20160122','20160121',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(30,30,4,'20160120','20160121','20160121',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(31,31,4,'20160120','20160122','20160122',3,8);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(32,32,4,'20160121','20160124','20160122',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(33,33,4,'20160121','20160122','20160122',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(34,34,4,'20160122','20160125','20160123',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(35,35,4,'20160122','20160125','20160124',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(36,36,4,'20160123','20160124','20160124',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(37,37,4,'20160125','20160128','20160126',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(38,38,4,'20160125','20160127','20160126',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(39,39,4,'20160125','20160126','20160126',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(40,40,4,'20160127','20160128','20160129',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(41,41,4,'20160127','20160130','20160129',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(42,42,4,'20160127','20160128','20160130',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(43,43,4,'20160127','20160128','20160130',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(44,44,4,'20160128','20160131','20160130',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(45,45,4,'20160128','20160131','20160131',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(46,46,4,'20160129','20160131','20160131',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(47,47,4,'20160129','20160130','20160131',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(48,48,4,'20160130','20160201','20160202',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(49,49,4,'20160131','20160201','20160202',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(50,50,4,'20160131','20160203','20160202',3,8);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(51,51,4,'20160201','20160202','20160203',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(52,52,4,'20160203','20160204','20160205',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(53,53,4,'20160203','20160204','20160205',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(54,54,4,'20160204','20160207','20160207',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(55,55,4,'20160204','20160207','20160206',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(56,56,4,'20160204','20160206','20160207',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(57,57,4,'20160204','20160206','20160206',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(58,58,4,'20160205','20160207','20160207',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(59,59,4,'20160205','20160207','20160206',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(60,60,4,'20160206','20160208','20160207',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(61,61,4,'20160206','20160209','20160209',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(62,62,4,'20160207','20160210','20160210',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(63,63,4,'20160207','20160209','20160209',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(64,64,4,'20160207','20160208','20160209',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(65,65,4,'20160208','20160209','20160211',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(66,66,4,'20160209','20160212','20160212',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(67,67,4,'20160209','20160211','20160210',3,8);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(68,68,4,'20160210','20160211','20160213',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(69,69,4,'20160210','20160212','20160211',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(70,70,3,'20160211','20160211',NULL,3,9);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(71,71,4,'20160211','20160214','20160212',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(72,72,4,'20160212','20160215','20160213',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(73,73,4,'20160212','20160215','20160214',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(74,74,4,'20160213','20160215','20160215',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(75,75,4,'20160214','20160215','20160217',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(76,76,3,'20160216','20160216',NULL,2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(77,77,4,'20160216','20160219','20160219',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(78,78,4,'20160216','20160218','20160219',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(79,79,4,'20160217','20160220','20160220',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(80,80,4,'20160217','20160220','20160219',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(81,81,4,'20160217','20160219','20160218',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(82,82,4,'20160218','20160221','20160220',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(83,83,4,'20160219','20160220','20160220',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(84,84,4,'20160220','20160222','20160221',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(85,85,4,'20160220','20160223','20160221',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(86,86,4,'20160221','20160222','20160223',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(87,87,4,'20160221','20160222','20160223',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(88,88,4,'20160221','20160222','20160223',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(89,89,4,'20160221','20160224','20160224',3,8);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(90,90,4,'20160223','20160225','20160224',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(91,91,4,'20160225','20160227','20160228',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(92,92,4,'20160225','20160228','20160228',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(93,93,4,'20160226','20160228','20160227',1,3);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(94,94,4,'20160227','20160228','20160229',1,2);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(95,95,4,'20160227','20160229','20160228',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(96,96,4,'20160227','20160229','20160228',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(97,97,4,'20160228','20160229','20160301',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(98,98,4,'20160228','20160229','20160229',2,6);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(99,99,4,'20160229','20160301','20160303',3,9);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(100,100,4,'20160301','20160304','20160303',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(101,101,4,'20160301','20160304','20160304',3,8);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(102,102,4,'20160302','20160305','20160303',2,7);
INSERT INTO sales.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(103,103,4,'20160303','20160306','20160305',1,2);

CREATE TABLE sales.order_items (
    order_id INT,
    item_id INT,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    list_price DECIMAL (10, 2) NOT NULL,
    discount DECIMAL (4, 2) NOT NULL DEFAULT 0,
    PRIMARY KEY (order_id, item_id),
    FOREIGN KEY (order_id) REFERENCES sales.orders (order_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (product_id) REFERENCES production.products (product_id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(1,1,20,1,599.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(1,2,8,2,1799.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(1,3,10,2,1549.00,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(1,4,16,2,599.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(1,5,4,1,2899.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(2,1,20,1,599.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(2,2,16,2,599.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(3,1,3,1,999.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(3,2,20,1,599.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(4,1,2,2,749.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(5,1,10,2,1549.00,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(5,2,17,1,429.00,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(5,3,26,1,599.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(6,1,18,1,449.00,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(6,2,12,2,549.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(6,3,20,1,599.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(6,4,3,2,999.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(6,5,9,2,2999.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(7,1,15,1,529.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(7,2,3,1,999.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(7,3,17,2,429.00,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(8,1,22,1,269.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(8,2,20,2,599.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(9,1,7,2,3999.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(10,1,14,1,269.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(11,1,8,1,1799.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(11,2,22,2,269.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(11,3,16,2,599.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(12,1,4,2,2899.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(12,2,11,1,1680.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(13,1,13,1,269.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(13,2,17,2,429.00,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(13,3,20,2,599.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(13,4,16,2,599.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(14,1,6,1,469.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(15,1,12,2,549.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(15,2,8,1,1799.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(15,3,18,2,449.00,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(15,4,23,2,299.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(16,1,8,1,1799.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(16,2,21,1,269.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(16,3,13,2,269.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(16,4,14,1,269.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(17,1,8,1,1799.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(17,2,23,1,299.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(17,3,5,1,1320.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(17,4,20,2,599.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(18,1,2,2,749.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(18,2,22,1,269.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(18,3,7,1,3999.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(18,4,25,2,499.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(18,5,9,2,2999.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(19,1,10,1,1549.00,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(19,2,9,2,2999.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(20,1,9,1,2999.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(20,2,10,2,1549.00,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(21,1,14,1,269.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(21,2,17,1,429.00,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(21,3,10,1,1549.00,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(22,1,15,2,529.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(22,2,22,1,269.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(23,1,4,2,2899.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(23,2,23,2,299.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(23,3,13,1,269.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(24,1,3,2,999.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(24,2,18,2,449.00,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(25,1,23,2,299.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(25,2,10,2,1549.00,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(25,3,22,1,269.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(25,4,14,1,269.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(25,5,21,1,269.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(26,1,7,1,3999.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(26,2,2,1,749.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(26,3,12,1,549.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(26,4,21,2,269.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(27,1,5,1,1320.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(27,2,19,1,449.00,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(27,3,26,2,599.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(27,4,8,1,1799.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(28,1,5,1,1320.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(28,2,7,2,3999.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(28,3,14,2,269.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(28,4,6,1,469.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(29,1,24,2,549.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(29,2,6,1,469.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(29,3,21,2,269.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(29,4,8,1,1799.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(29,5,14,2,269.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(30,1,26,1,599.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(30,2,17,1,429.00,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(30,3,19,1,449.00,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(30,4,4,1,2899.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(30,5,7,2,3999.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(31,1,11,2,1680.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(31,2,9,2,2999.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(32,1,8,2,1799.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(32,2,12,2,549.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(32,3,25,2,499.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(33,1,23,2,299.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(33,2,7,1,3999.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(34,1,8,2,1799.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(34,2,10,2,1549.00,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(34,3,17,2,429.00,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(35,1,18,1,449.00,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(35,2,20,2,599.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(35,3,5,1,1320.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(35,4,21,2,269.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(35,5,22,1,269.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(36,1,9,1,2999.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(36,2,5,1,1320.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(36,3,3,2,999.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(37,1,16,2,599.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(38,1,7,2,3999.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(38,2,23,1,299.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(38,3,25,1,499.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(38,4,10,2,1549.00,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(38,5,24,1,549.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(39,1,22,2,269.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(39,2,16,2,599.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(39,3,3,2,999.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(39,4,15,1,529.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(40,1,17,1,429.00,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(40,2,8,2,1799.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(41,1,5,1,1320.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(41,2,19,2,449.00,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(41,3,26,2,599.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(42,1,19,1,449.00,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(43,1,13,2,269.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(43,2,12,2,549.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(44,1,7,1,3999.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(44,2,16,1,599.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(45,1,4,2,2899.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(45,2,22,1,269.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(45,3,21,2,269.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(46,1,17,1,429.00,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(47,1,6,1,469.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(47,2,15,1,529.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(47,3,25,2,499.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(47,4,13,1,269.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(48,1,11,1,1680.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(48,2,4,1,2899.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(48,3,5,2,1320.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(48,4,14,2,269.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(49,1,13,2,269.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(50,1,3,1,999.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(50,2,26,2,599.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(50,3,13,2,269.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(51,1,13,1,269.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(51,2,20,1,599.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(51,3,26,2,599.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(52,1,25,1,499.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(53,1,8,2,1799.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(53,2,23,2,299.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(53,3,14,2,269.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(53,4,25,2,499.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(54,1,26,2,599.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(54,2,3,1,999.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(55,1,21,1,269.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(55,2,25,2,499.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(55,3,15,2,529.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(56,1,20,2,599.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(57,1,23,2,299.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(57,2,19,2,449.00,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(57,3,13,1,269.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(58,1,14,2,269.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(58,2,18,1,449.00,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(58,3,23,1,299.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(59,1,21,1,269.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(59,2,2,1,749.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(59,3,17,2,429.00,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(60,1,14,2,269.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(60,2,4,1,2899.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(60,3,15,1,529.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(60,4,22,1,269.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(61,1,25,1,499.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(61,2,15,2,529.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(61,3,5,2,1320.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(62,1,14,1,269.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(62,2,8,2,1799.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(62,3,22,2,269.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(63,1,25,2,499.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(63,2,19,2,449.00,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(63,3,3,1,999.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(64,1,25,2,499.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(64,2,22,2,269.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(64,3,23,2,299.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(64,4,24,2,549.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(65,1,12,1,549.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(66,1,2,1,749.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(66,2,23,1,299.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(66,3,12,1,549.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(67,1,23,2,299.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(67,2,12,2,549.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(67,3,21,1,269.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(67,4,5,2,1320.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(67,5,19,1,449.00,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(68,1,13,2,269.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(68,2,17,1,429.00,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(69,1,22,2,269.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(69,2,5,1,1320.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(69,3,10,1,1549.00,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(70,1,3,2,999.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(70,2,18,1,449.00,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(70,3,20,1,599.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(71,1,26,2,599.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(71,2,24,1,549.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(71,3,18,1,449.00,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(72,1,17,2,429.00,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(72,2,12,1,549.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(72,3,13,2,269.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(73,1,22,1,269.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(73,2,26,2,599.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(73,3,3,2,999.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(73,4,25,1,499.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(73,5,23,2,299.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(74,1,16,2,599.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(74,2,6,1,469.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(75,1,3,1,999.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(75,2,7,2,3999.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(75,3,15,1,529.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(76,1,12,1,549.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(76,2,11,2,1680.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(76,3,5,1,1320.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(77,1,20,1,599.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(77,2,24,2,549.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(77,3,26,1,599.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(77,4,25,1,499.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(78,1,17,1,429.00,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(78,2,19,1,449.00,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(78,3,18,2,449.00,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(78,4,14,2,269.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(79,1,9,2,2999.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(79,2,17,2,429.00,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(79,3,6,1,469.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(79,4,25,2,499.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(80,1,26,1,599.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(80,2,24,1,549.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(80,3,17,1,429.00,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(81,1,10,2,1549.00,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(81,2,23,2,299.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(81,3,25,2,499.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(82,1,25,2,499.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(82,2,11,2,1680.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(83,1,20,1,599.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(83,2,3,2,999.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(84,1,23,2,299.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(84,2,15,2,529.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(85,1,4,2,2899.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(85,2,18,1,449.00,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(86,1,9,2,2999.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(86,2,23,2,299.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(86,3,21,2,269.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(86,4,15,1,529.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(87,1,20,2,599.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(87,2,23,2,299.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(88,1,10,1,1549.00,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(88,2,8,2,1799.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(88,3,7,1,3999.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(89,1,5,1,1320.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(89,2,6,2,469.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(90,1,3,1,999.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(90,2,6,1,469.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(91,1,11,1,1680.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(91,2,25,1,499.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(91,3,15,2,529.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(91,4,13,2,269.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(92,1,8,1,1799.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(93,1,22,2,269.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(93,2,17,1,429.00,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(93,3,21,1,269.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(93,4,2,1,749.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(93,5,10,2,1549.00,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(94,1,12,1,549.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(94,2,4,1,2899.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(94,3,11,1,1680.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(94,4,21,2,269.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(95,1,10,2,1549.00,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(95,2,19,1,449.00,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(95,3,8,2,1799.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(95,4,20,2,599.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(96,1,26,1,599.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(96,2,23,1,299.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(97,1,20,2,599.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(97,2,2,1,749.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(97,3,6,2,469.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(97,4,19,1,449.00,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(98,1,19,1,449.00,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(98,2,21,1,269.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(98,3,2,1,749.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(98,4,22,2,269.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(99,1,13,1,269.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(99,2,21,1,269.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(99,3,25,2,499.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(99,4,7,2,3999.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(99,5,23,2,299.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(100,1,12,2,549.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(100,2,11,2,1680.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(100,3,7,2,3999.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(100,4,16,2,599.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(100,5,24,2,549.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(101,1,12,2,549.99,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(102,1,15,1,529.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(102,2,22,1,269.99,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(103,1,17,1,429.00,0.07);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(103,2,3,1,999.99,0.05);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(103,3,18,1,449.00,0.2);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(103,4,15,2,529.99,0.1);
INSERT INTO sales.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(103,5,9,2,2999.99,0.1);

SELECT * FROM sales.order_items;
