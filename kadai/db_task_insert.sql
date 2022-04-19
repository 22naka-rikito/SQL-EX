INSERT INTO company
VALUES(1,'LonelyMart');

INSERT INTO store
VALUES(1, 1, '日本橋店', '東京都中央区日本橋 1-1-1', '03-111-2222');

INSERT INTO slip
VALUES(1, 1, '2022/4/1', 1, 001);

INSERT INTO goods
VALUES(1, 'いろはす', 100, '飲み物', 8)
,(2, 'ツナマヨおにぎり', 120, '食べ物', 8)
,(3, 'ファブリーズ', 400 , '日用品', 10)
,(4, 'レジ袋', 3, '袋', 0);

INSERT INTO buy_goods
VALUES(1, 1, 1, 10)
,(1, 2, 1, 0)
,(1, 3, 1, 0)
,(1, 4, 1, 0);