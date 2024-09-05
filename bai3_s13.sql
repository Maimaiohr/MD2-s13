USE session13;
INSERT INTO customer(cName, cAge) values
 ("MINH QUAN", 10),
 ("NGOC OANH", 20),
 ("HONG HA", 50);
INSERT INTO orderr(cID, oDate, oTotalPrice) values
 (1, '2006-03-21 00:00:00', 1000),
 (2, '2006-3-23 00:00:00', 2000),
 (1, '2006-3-16 00:00:00', 3000);
INSERT INTO product(pName, pPrice) values
("MAY GIAT", 3),("TU LANH", 5),
("DIEU HOA", 7),
("QUAT", 1),
("BEP DIEN", 2);
INSERT INTO orderdetail(oID, pID, odQTY) values
(1, 1, 3),
(1, 3, 7),
(1, 4, 2),
(2, 1, 1),
(3, 1, 8),
(2, 5,4),
(2, 3, 3);