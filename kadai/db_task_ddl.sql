CREATE TABLE company(
company_ID INT PRIMARY KEY
,company_name VARCHAR(30) 
);

CREATE TABLE store(
store_ID INT PRIMARY KEY
,company_ID INT REFERENCES company(company_ID)
,store_name VARCHAR(30)
,address VARCHAR(50)
,TEL VARCHAR(15)
);

CREATE TABLE slip(
slip_ID INT PRIMARY KEY
,store_ID INT REFERENCES store(store_ID)
,date_time DATE
,regi_ID INT
,person_ID INT
);

CREATE TABLE goods(
goods_ID INT PRIMARY KEY
,goods_name VARCHAR(30)
,price DECIMAL
,goods_kinds VARCHAR(30)
,tax_rate INT
);

CREATE TABLE buy_goods(
slip_ID INT REFERENCES slip(slip_ID)
,goods_ID INT REFERENCES goods(goods_ID)
,quantity INT
,discount DECIMAL
,PRIMARY KEY(slip_ID, goods_ID)
);