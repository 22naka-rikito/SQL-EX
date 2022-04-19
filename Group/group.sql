CREATE DATABASE group_kadai;

CREATE TABLE person(
id INT PRIMARY KEY
,名前 VARCHAR(50)
,フリガナ VARCHAR(50)
,会社ID INT
,部署ID INT
,事務所ID INT
,メールアドレス VARCHAR(50)
,社員ID INT
);

CREATE TABLE company(
会社ID INT PRIMARY KEY
,会社名 VARCHAR(50)
,URL VARCHAR(50)
);

CREATE TABLE department(
部署ID INT PRIMARY KEY
,部署名 VARCHAR(50)
);

CREATE TABLE office(
事務所ID INT PRIMARY KEY
,事業所名 VARCHAR(50)
,住所 VARCHAR(50)
,電話番号 VARCHAR(13)
,FAX VARCHAR(50)
);

INSERT INTO company(
VALUES(1, 'ABC', 'https://ABC')
,(2, 'DEF', 'https://DEF')
,(3, 'GHI', 'https://GHI')
,(4, 'JKL', 'https://JKL')
,(5, 'MNO', 'https://MNO')
);

INSERT INTO department(
VALUES(1, 'ABC')
,(2, 'CDE')
,(3, 'FGH')
);

INSERT INTO office(
VALUES(1, 'ピーマン', 'ピーマン1丁目', '090-0000-000P', '000-123')
,(2, 'ジャガイモ', 'じゃがいも2丁目', '090-0000-00JI', '012-333')
,(3, 'すいか', 'すいか2丁目', '080-0000-00WM', '789-789')
,(4, 'きゅうり', 'きゅうり4丁目', '090-0000-00QB', '789-444')
);

SELECT * FROM company;
SELECT * FROM office;
SELECT * FROM department;
