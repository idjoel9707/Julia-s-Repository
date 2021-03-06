-- insert
INSERT INTO `user` VALUES
    (1,1,'1996-07-31','Perempuan','2022-07-23 10:07:00','2022-07-23 17:07:00','Ani'),
    (2,1,'1996-08-31','Laki-laki','2022-07-23 10:08:21','2022-07-23 17:08:21','Budi'),
    (3,0,'1996-08-31','Laki-laki','2022-07-23 10:08:21','2022-07-23 17:08:21','Danu'),
    (4,0,'1996-08-31','Perempuan','2022-07-23 10:08:21','2022-07-23 17:08:21','Siti'),
    (5,1,'1995-07-31','Perempuan','2022-07-23 10:36:56','2022-07-23 17:36:56','Arunika');

INSERT INTO `product_type` VALUES
    (1,'Pulsa','2022-07-23 10:12:19','2022-07-23 17:12:19'),
    (2,'Data','2022-07-23 10:12:19','2022-07-23 17:12:19'),
    (3,'Kartu','2022-07-23 10:12:19','2022-07-23 17:12:19');

INSERT INTO `product` VALUES
    (1,'product_dummy',1,3,1,'2022-07-23 10:23:48','2022-07-23 18:15:11'),
    (2,'30K Pulsa',1,3,2,'2022-07-23 10:23:48','2022-07-23 17:27:55'),
    (3,'10G Data',2,1,3,'2022-07-23 10:23:48','2022-07-23 17:28:01'),
    (4,'Kartu Paket Data dan Pulsa',2,1,4,'2022-07-23 10:23:48','2022-07-23 17:32:21'),
    (5,'100K Pulsa',2,1,5,'2022-07-23 10:23:48','2022-07-23 17:32:22'),
    (6,'5K Pulsa',3,4,6,'2022-07-23 10:23:48','2022-07-23 17:32:22'),
    (7,'Kartu Data 18GB',3,4,7,'2022-07-23 10:23:48','2022-07-23 17:32:22'),
    (8,'15G Data',3,4,8,'2022-07-23 10:23:48','2022-07-23 17:32:24');

INSERT INTO `product_desc` VALUES
    (1,'3GB Data','2022-07-23 10:26:14','2022-07-23 17:26:14'),
    (2,'30K Pulsa','2022-07-23 10:26:14','2022-07-23 17:26:14'),
    (3,'10G Data','2022-07-23 10:26:14','2022-07-23 17:26:14'),
    (4,'Kartu Paket Data dan Pulsa','2022-07-23 10:26:14','2022-07-23 17:26:14'),
    (5,'100K Pulsa','2022-07-23 10:26:14','2022-07-23 17:26:14'),
    (6,'5K Pulsa','2022-07-23 10:26:14','2022-07-23 17:26:14'),
    (7,'Kartu Data 18GB','2022-07-23 10:26:14','2022-07-23 17:26:14'),
    (8,'15G Data','2022-07-23 10:26:14','2022-07-23 17:26:14');

INSERT INTO `payment_method` VALUES
    (1,'Debit','2022-07-23 10:35:18','2022-07-23 17:35:18'),
    (2,'Kredit','2022-07-23 10:35:18','2022-07-23 17:35:18'),
    (3,'Tunai','2022-07-23 10:35:18','2022-07-23 17:35:18');

INSERT INTO `transaction` VALUES
    (1,1,'2022-07-23 10:50:07','2022-07-23 17:50:07',1,1,1,150000.00),
    (2,1,'2022-07-23 10:50:07','2022-07-23 17:50:07',3,1,1,210000.00),
    (3,1,'2022-07-23 10:50:07','2022-07-23 17:50:07',2,1,2,10000.00),
    (4,2,'2022-07-23 10:50:07','2022-07-23 17:50:07',2,1,1,10000.00),
    (5,2,'2022-07-23 10:50:07','2022-07-23 17:50:07',3,1,1,17000.00),
    (6,2,'2022-07-23 10:50:07','2022-07-23 17:50:07',1,1,2,100000.00),
    (7,3,'2022-07-23 10:50:07','2022-07-23 17:50:07',1,1,1,10000.00),
    (8,3,'2022-07-23 10:50:07','2022-07-23 17:50:07',3,1,1,8000.00),
    (9,3,'2022-07-23 10:50:07','2022-07-23 17:50:07',2,1,2,10000.00),
    (10,4,'2022-07-23 10:50:07','2022-07-23 17:50:07',1,1,1,70000.00),
    (11,4,'2022-07-23 10:50:07','2022-07-23 17:50:07',3,1,1,50000.00),
    (12,4,'2022-07-23 10:50:07','2022-07-23 17:50:07',2,1,2,10000.00),
    (13,5,'2022-07-23 10:50:07','2022-07-23 17:50:07',1,1,1,10000.00),
    (14,5,'2022-07-23 10:50:07','2022-07-23 17:50:07',3,1,1,20000.00),
    (15,5,'2022-07-23 10:50:07','2022-07-23 17:50:07',2,1,2,10000.00);

INSERT INTO `detail_transaction` VALUES
    (1,1,1,'2022-07-23 11:07:13','2022-07-23 18:18:54',3),
    (2,1,2,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (3,1,3,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (4,2,4,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (5,2,5,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (6,2,6,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (7,3,7,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (8,3,8,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (9,3,1,'2022-07-23 11:07:13','2022-07-23 18:18:54',3),
    (10,4,2,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (11,4,3,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (12,4,4,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (13,5,5,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (14,5,6,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (15,5,7,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (16,6,8,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (17,6,1,'2022-07-23 11:07:13','2022-07-23 18:18:54',3),
    (18,6,2,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (19,7,3,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (20,7,4,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (21,7,5,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (22,8,6,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (23,8,7,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (24,8,8,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (25,9,1,'2022-07-23 11:07:13','2022-07-23 18:18:54',3),
    (26,9,2,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (27,9,3,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (28,10,4,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (29,10,5,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (30,10,6,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (31,11,7,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (32,11,8,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (33,11,1,'2022-07-23 11:07:13','2022-07-23 18:18:54',3),
    (34,12,2,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (35,12,3,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (36,12,4,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (37,13,5,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (38,13,6,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (39,13,7,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (40,14,8,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (41,14,1,'2022-07-23 11:07:13','2022-07-23 18:18:54',3),
    (42,14,2,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (43,15,3,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (44,15,4,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),
    (45,15,5,'2022-07-23 11:07:13','2022-07-23 18:07:13',1);

-- select
SELECT * FROM user where gender like '%laki%';
+----+--------+---------------+-----------+---------------------+---------------------+------+
| id | status | tanggal_lahir | gender    | created_at          | updated_at          | nama |
+----+--------+---------------+-----------+---------------------+---------------------+------+
|  2 |      1 | 1996-08-31    | Laki-laki | 2022-07-23 17:08:21 | 2022-07-23 17:08:21 | Budi |
|  3 |      0 | 1996-08-31    | Laki-laki | 2022-07-23 17:08:21 | 2022-07-23 17:08:21 | Danu |
+----+--------+---------------+-----------+---------------------+---------------------+------+

SELECT * FROM product where id = 3;
+----+----------+-----------------+-------------+--------------+---------------------+---------------------+
| id | nama     | product_type_id | operator_id | prod_desc_id | created_at          | updated_at          |
+----+----------+-----------------+-------------+--------------+---------------------+---------------------+
|  3 | 10G Data |               2 |           1 |            3 | 2022-07-23 17:23:48 | 2022-07-23 17:28:01 |
+----+----------+-----------------+-------------+--------------+---------------------+---------------------+

SELECT * FROM user WHERE nama like '%a%' AND date(created_at) BETWEEN '2022-07-18' AND '2022-07-25';
+----+--------+---------------+-----------+---------------------+---------------------+---------+
| id | status | tanggal_lahir | gender    | created_at          | updated_at          | nama    |
+----+--------+---------------+-----------+---------------------+---------------------+---------+
|  1 |      1 | 1996-07-31    | Perempuan | 2022-07-23 17:07:00 | 2022-07-23 17:07:00 | Ani     |
|  3 |      0 | 1996-08-31    | Laki-laki | 2022-07-23 17:08:21 | 2022-07-23 17:08:21 | Danu    |
|  5 |      1 | 1995-07-31    | Perempuan | 2022-07-23 17:36:56 | 2022-07-23 17:36:56 | Arunika |
+----+--------+---------------+-----------+---------------------+---------------------+---------+

SELECT COUNT(*) as 'total_user' FROM user WHERE gender ='Perempuan';
+------------+
| total_user |
+------------+
|          3 |
+------------+

SELECT * FROM user ORDER BY nama ASC;
+----+--------+---------------+-----------+---------------------+---------------------+---------+
| id | status | tanggal_lahir | gender    | created_at          | updated_at          | nama    |
+----+--------+---------------+-----------+---------------------+---------------------+---------+
|  1 |      1 | 1996-07-31    | Perempuan | 2022-07-23 17:07:00 | 2022-07-23 17:07:00 | Ani     |
|  5 |      1 | 1995-07-31    | Perempuan | 2022-07-23 17:36:56 | 2022-07-23 17:36:56 | Arunika |
|  2 |      1 | 1996-08-31    | Laki-laki | 2022-07-23 17:08:21 | 2022-07-23 17:08:21 | Budi    |
|  3 |      0 | 1996-08-31    | Laki-laki | 2022-07-23 17:08:21 | 2022-07-23 17:08:21 | Danu    |
|  4 |      0 | 1996-08-31    | Perempuan | 2022-07-23 17:08:21 | 2022-07-23 17:08:21 | Siti    |
+----+--------+---------------+-----------+---------------------+---------------------+---------+

SELECT * FROM product LIMIT 5;
+----+----------------------------+-----------------+-------------+--------------+---------------------+---------------------+
| id | nama                       | product_type_id | operator_id | prod_desc_id | created_at          | updated_at          |
+----+----------------------------+-----------------+-------------+--------------+---------------------+---------------------+
|  1 | product_dummy              |               1 |           3 |            1 | 2022-07-23 17:23:48 | 2022-07-23 18:15:11 |
|  2 | 30K Pulsa                  |               1 |           3 |            2 | 2022-07-23 17:23:48 | 2022-07-23 17:27:55 |
|  3 | 10G Data                   |               2 |           1 |            3 | 2022-07-23 17:23:48 | 2022-07-23 17:28:01 |
|  4 | Kartu Paket Data dan Pulsa |               2 |           1 |            4 | 2022-07-23 17:23:48 | 2022-07-23 17:32:21 |
|  5 | 100K Pulsa                 |               2 |           1 |            5 | 2022-07-23 17:23:48 | 2022-07-23 17:32:22 |
+----+----------------------------+-----------------+-------------+--------------+---------------------+---------------------+
-- update
UPDATE product SET nama = 'product dummy' WHERE id = 1;
-- SELECT * FROM product WHERE id = 1;
+----+----------------------------+-----------------+-------------+--------------+---------------------+---------------------+
| id | nama                       | product_type_id | operator_id | prod_desc_id | created_at          | updated_at          |
+----+----------------------------+-----------------+-------------+--------------+---------------------+---------------------+
|  1 | product_dummy              |               1 |           3 |            1 | 2022-07-23 17:23:48 | 2022-07-23 18:15:11 |
+----+----------------------------+-----------------+-------------+--------------+---------------------+---------------------+

UPDATE detail_transaction SET qty = 3 WHERE product_id = 1;
-- SELECT * FROM detail_transaction WHERE product_id = 1;
+----+----------------+------------+---------------------+---------------------+------+
| id | transaction_id | product_id | created_at          | updated_at          | qty  |
+----+----------------+------------+---------------------+---------------------+------+
|  1 |              1 |          1 | 2022-07-23 18:07:13 | 2022-07-23 18:18:54 |    3 |
|  9 |              3 |          1 | 2022-07-23 18:07:13 | 2022-07-23 18:18:54 |    3 |
| 17 |              6 |          1 | 2022-07-23 18:07:13 | 2022-07-23 18:18:54 |    3 |
| 25 |              9 |          1 | 2022-07-23 18:07:13 | 2022-07-23 18:18:54 |    3 |
| 33 |             11 |          1 | 2022-07-23 18:07:13 | 2022-07-23 18:18:54 |    3 |
| 41 |             14 |          1 | 2022-07-23 18:07:13 | 2022-07-23 18:18:54 |    3 |
+----+----------------+------------+---------------------+---------------------+------+

-- delete
DELETE FROM product WHERE id = 1;
DELETE FROM product WHERE product_type_id = 1;
