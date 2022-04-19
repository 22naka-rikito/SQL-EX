|テーブル情報| | | | | | |
|:----|:----|:----|:----|:----|:----|:----|
| |システム名| | |作成者|axiz| |
| |サブシステム名| | |作成日|2022/04/19| |
| |スキーマ名|public| |更新日| | |
| |論理テーブル名| | |RDBMS|PostgreSQL 14.2, compiled by Visual C++ build 1914, 64-bit 14.2| |
| |物理テーブル名|store| | | | |
| |備考| | | | | |
| | | | | | | |
| | | | | | | |
| | | | | | | |
| | | | | | | |
|カラム情報| | | | | | |
|No.|論理名|物理名|データ型|Not Null|デフォルト|備考|
|1| |store_id|integer|Yes (PK)| | |
|2| |company_id|integer| | | |
|3| |store_name|character varying(30)| | | |
|4| |address|character varying(50)| | | |
|5| |tel|character varying(15)| | | |
| | | | | | | |
|インデックス情報| | | | | | |
|No.|インデックス名|カラムリスト| |主キー|ユニーク|備考|
|1|store_pkey|store_id| |Yes|Yes| |
| | | | | | | |
|制約情報| | | | | | |
|No.|制約名|種類|制約定義| | | |
|1|2200_16706_1_not_null|CHECK|store_id IS NOT NULL| | | |
|2|store_pkey|PRIMARY KEY|store_id| | | |
| | | | | | | |
|外部キー情報| | | | | | |
|No.|外部キー名|カラムリスト| |参照先テーブル名| |参照先カラムリスト|
|1|store_company_id_fkey|company_id| |public.company| |company_id|
| | | | | | | |
|外部キー情報(PK側)| | | | | | |
|No.|外部キー名|カラムリスト| |参照元テーブル名| |参照元カラムリスト|
|1|slip_store_id_fkey|store_id| |public.slip| |store_id|
| | | | | | | |
|トリガー情報| | | | | | |
|No.|トリガー名|イベント| |タイミング| |条件|
| | | | | | | |
|RDBMS固有の情報| | | | | | |
|No.|プロパティ名| |プロパティ値| | | |
|1|schemaname| |public| | | |
|2|tablename| |store| | | |
|3|tableowner| |axizuser| | | |
|4|tablespace| | | | | |
|5|hasindexes| |True| | | |
|6|hasrules| |False| | | |
|7|hastriggers| |True| | | |
|8|rowsecurity| |False| | | |
