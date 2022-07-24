-- 1
SELECT * FROM transaction WHERE user_id = 1 OR user_id = 2;

-- 2
SELECT SUM(total_price) as total_price FROM transaction WHERE user_id = 1;

--3
SELECT COUNT(*) as total_transaction
FROM detail_transaction
WHERE product_id in (
    SELECT id FROM product WHERE product_type_id = 2
);

-- 4
SELECT * FROM product as p LEFT JOIN product_type as pt ON pt.product_type_id = pt.id;

-- 5
SELECT u.nama as nama_user, t.payment_method_id, t.total_price, dt.product_id, p.nama as nama_produk
FROM transaction as t
RIGHT JOIN user as u ON u.id = t.user_id
LEFT JOIN detail_transaction as dt ON dt.transaction_id = t.id
LEFT JOIN product as p ON dt.product_id = p.id
;

-- 6
-- 7
-- 8