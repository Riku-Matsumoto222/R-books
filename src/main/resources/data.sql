-- 本のマスターデータ（books）
INSERT INTO books (isbn, title, author, publisher, published_date, description, category, image_url, created_at, updated_at) VALUES
('9784088511016', '北斗の拳 1', '武論尊, 原哲夫', '集英社', '1984-03-09', '核戦争後の荒廃した世界。北斗神拳の伝承者・ケンシロウの戦いが始まる。', '漫画', 'https://img.hanmoto.com/bd/img/9784086172837.jpg?lastupdated=2024-01-24T00%3A42%3A06%2B09%3A00', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('9784253043816', 'グラップラー刃牙 1', '板垣恵介', '秋田書店', '1992-02-01', '地上最強の父を超えるため、13歳の少年・範馬刃牙が闘技場で戦う格闘漫画の金字塔。', '漫画', 'https://img.hanmoto.com/bd/img/9784253186612.jpg?lastupdated=2021-06-17T10%3A44%3A08%2B09%3A00', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('9784088716305', 'ジョジョの奇妙な冒険 第4部 ダイヤモンドは砕けない 1', '荒木飛呂彦', '集英社', '1992-11-01', '日本の杜王町を舞台に、東方仗助と仲間たちがスタンド使いの凶悪犯に立ち向かう。', '漫画', 'https://img.hanmoto.com/bd/img/9784081111428.jpg?lastupdated=2016-03-04T16%3A02%3A13%2B09%3A00', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('9784062761321', '姑獲鳥の夏', '京極夏彦', '講談社', '1994-09-01', '「二十箇月もの間、子供を身籠っている女がいる」古本屋・京極堂が憑物落としに挑む。', 'ミステリー', 'https://img.hanmoto.com/bd/img/9784062638876.jpg?lastupdated=2026-04-07T16%3A53%3A09%2B09%3A00', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('9784103534228', '1Q84 BOOK1', '村上春樹', '新潮社', '2009-05-29', '青豆と天吾。二人の物語が、二つの月が浮かぶ世界「1Q84」で交錯する。', '文学', 'https://img.hanmoto.com/bd/img/9784101001593.jpg?lastupdated=2025-11-10T17%3A34%3A50%2B09%3A00', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('9784152090515', '三体', '劉慈欣', '早川書房', '2019-07-04', '中国で爆発的ヒットを記録したSF叙事詩。文化大革命の悲劇から人類の運命を左右する壮大な物語へ。', 'SF', 'https://img.hanmoto.com/bd/img/9784150124342.jpg?lastupdated=2025-10-29T17%3A39%3A16%2B09%3A00', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('9784042945017', 'ダ・ヴィンチ・コード 上', 'ダン・ブラウン', '角川書店', '2004-05-28', 'ルーヴル美術館の殺人事件から、キリスト教の歴史を覆す驚愕の真実へと迫る。', 'ミステリー', 'https://img.hanmoto.com/bd/img/9784042955030.jpg?lastupdated=2025-10-29T11%3A39%3A58%2B09%3A00', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- 在庫データ（book_items）
-- 北斗の拳：新品/中古
INSERT INTO book_items (book_id, condition_type, price, cost_price, status, note, purchased_at, created_at, updated_at) VALUES
(1, 'NEW', 748, 500, 'ON_SALE', NULL, '2026-02-15', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(1, 'NEW', 748, 500, 'ON_SALE', NULL, '2026-02-15', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(1, 'USED_A', 400, 100, 'ON_SALE', '帯付き、目立った傷なし、本文きれい', '2026-01-20', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(1, 'USED_B', 250, 50, 'ON_SALE', '表紙に少し擦れあり、本文は良好', '2025-12-05', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- 刃牙：新品/中古
INSERT INTO book_items (book_id, condition_type, price, cost_price, status, note, purchased_at, created_at, updated_at) VALUES
(2, 'NEW', 715, 480, 'ON_SALE', NULL, '2026-03-01', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(2, 'USED_B', 350, 80, 'ON_SALE', 'カバーに日焼けあり、本文はきれい', '2026-01-10', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- ジョジョ4部：新品/中古
INSERT INTO book_items (book_id, condition_type, price, cost_price, status, note, purchased_at, created_at, updated_at) VALUES
(3, 'USED_A', 450, 150, 'ON_SALE', '美品、帯付き', '2026-02-20', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(3, 'USED_B', 300, 100, 'ON_SALE', NULL, '2025-11-15', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(3, 'USED_C', 110, 10, 'ON_SALE', '経年劣化あり、読書は可能', '2025-10-01', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- 姑獲鳥の夏：新品/中古
INSERT INTO book_items (book_id, condition_type, price, cost_price, status, note, purchased_at, created_at, updated_at) VALUES
(4, 'NEW', 781, 530, 'ON_SALE', NULL, '2026-03-10', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- 1Q84：新品/中古(売り切れ一つあり)
INSERT INTO book_items (book_id, condition_type, price, cost_price, status, note, purchased_at, created_at, updated_at) VALUES
(5, 'NEW', 1980, 1300, 'SOLD', NULL, '2026-01-05', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(5, 'USED_A', 880, 200, 'ON_SALE', '帯付き、美品', '2026-02-08', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- 三体：新品/中古
INSERT INTO book_items (book_id, condition_type, price, cost_price, status, note, purchased_at, created_at, updated_at) VALUES
(6, 'NEW', 2090, 1400, 'ON_SALE', NULL, '2026-03-05', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(6, 'USED_B', 980, 300, 'WITHDRAWN', '販売停止中', '2025-09-20', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- ダ・ヴィンチ・コード：新品/中古
INSERT INTO book_items (book_id, condition_type, price, cost_price, status, note, purchased_at, created_at, updated_at) VALUES
(7, 'NEW', 748, 500, 'ON_SALE', NULL, '2026-03-12', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(7, 'USED_A', 350, 50, 'ON_SALE', '帯付き、ほぼ新品', '2026-02-25', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(7, 'USED_B', 110, 10, 'ON_SALE', 'カバー軽微な擦れ、本文きれい', '2025-11-30', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);