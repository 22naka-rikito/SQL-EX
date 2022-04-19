買ったやつテーブル
|No.|論理名|物理名|データ型|Not Null|デフォルト|備考|
|:----|:----|:----|:----|:----|:----|:----|
|1|伝票番号|slip_id|integer|Yes (PK)| | |
|2|商品ID|goods_id|integer|Yes (PK)| | |
|3|個数|quantity|integer| | | |
|4|値引|discount|numeric| | | |

会社テーブル
|No.|論理名|物理名|データ型|Not Null|デフォルト|備考|
|:----|:----|:----|:----|:----|:----|:----|
|1|会社ID|company_id|integer|Yes (PK)| | |
|2|会社名|company_name|character varying(30)| | | |

商品テーブル
|No.|論理名|物理名|データ型|Not Null|デフォルト|備考|
|:----|:----|:----|:----|:----|:----|:----|
|1|商品番号|goods_id|integer|Yes (PK)| | |
|2|商品名|goods_name|character varying(30)| | | |
|3|価格|price|numeric| | | |
|4|商品の種類|goods_kinds|character varying(30)| | | |
|5|消費税率|tax_rate|integer| | | |

伝票テーブル
|No.|論理名|物理名|データ型|Not Null|デフォルト|備考|
|:----|:----|:----|:----|:----|:----|:----|
|1|伝票番号|slip_id|integer|Yes (PK)| | |
|2|店舗ID|store_id|integer| | | |
|3|日付|date_time|date| | | |
|4|レジ番号|regi_id|integer| | | |
|5|従業員ID|person_id|integer| | | |

店舗テーブル
|No.|論理名|物理名|データ型|Not Null|デフォルト|備考|
|:----|:----|:----|:----|:----|:----|:----|
|1|店舗ID|store_id|integer|Yes (PK)| | |
|2|会社ID|company_id|integer| | | |
|3|店舗名|store_name|character varying(30)| | | |
|4|住所|address|character varying(50)| | | |
|5|電話番号|tel|character varying(15)| | | |
| | |
