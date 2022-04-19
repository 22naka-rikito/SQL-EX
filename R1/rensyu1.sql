--テーブル作成
CREATE TABLE products(
id INT PRIMARY KEY
,product_name VARCHAR(50)
,price INT
,category INT
);

--テーブルに値を入力
INSERT INTO products
VALUES(1, 'チョコレート', 180, 1)
,(2, '緑茶', 120, 1)
,(3, 'ティッシュ', 250, 2)
,(4, '綿棒', 80, 2)
,(5, 'ハンカチ',340, 3)
,(6, 'マグカップ', 700, 3)
,(7, 'スマホケース', null, 3);

--データ確認
--1. すべてのレコードを取得
SELECT *
FROM products;

--2. idが1のレコードを取得
SELECT *
FROM products
WHERE id=1;

--3. 部品名が「緑茶」のレコードを取得
SELECT *
FROM products
WHERE product_name='緑茶';

--4. 値段が200円以上で、カテゴリが2のレコードを取得
SELECT *
FROM products
WHERE price>=200 AND category=2;

--5. 値段がNULLのレコードを取得
SELECT *
FROM products
WHERE price IS NULL;

--6. カテゴリが2,または3のレコードを取得
SELECT *
FROM products
WHERE category=2 OR category=3;

--7. 値段が200円以上、500円以下のレコードを取得
SELECT *
FROM products
WHERE price>=200 AND price<=500;

--8. 部品名に「ッ」が入るレコードを取得
SELECT *
FROM products
WHERE product_name LIKE '%ッ%';

--データ更新
--1. カテゴリが1の商品の値段を+50円更新
UPDATE products
SET price=price+50
WHERE id=1;

--2. 値段が100円以下の商品の値段を+30円更新
UPDATE products
SET price=price+30
WHERE price<=100;

--データ消去
--1. 値段がNULLのレコードを削除する
DELETE FROM products
WHERE price IS NULL;

--2. productsテーブルの全レコードを削除
DELETE FROM products;
