sql> CREATE TABLE IF NOT EXISTS hrac (    id INTEGER PRIMARY KEY AUTOINCREMENT,    prezdivka TEXT NOT NULL,    vytvoren TEXT DEFAULT (datetime('now')));
(0 řádků)
sql> CREATE TABLE IF NOT EXISTS skore (    id INTEGER PRIMARY KEY AUTOINCREMENT,    id_hrace INTEGER NOT NULL,    body INTEGER NOT NULL,    uroven INTEGER DEFAULT 1,    cas TEXT DEFAULT (datetime('now')),    FOREIGN KEY (id_hrace) REFERENCES hrac(id));
(0 řádků)
sql> INSERT INTO hrac (prezdivka) VALUES ('Blesk'), ('Ninja42'), ('Kuba_P');
(0 řádků)
sql> INSERT INTO skore (id_hrace, body, uroven)VALUES (1, 1200, 3), (2, 850, 2), (1, 1550, 4), (3, 400, 1), (2, 2300, 5);
(0 řádků)
sql> SELECT * FROM hrac
id | prezdivka | vytvoren
1 | Blesk | 2026-10-10 15:21:06
2 | Ninja42 | 2026-10-10 15:21:06
3 | Kuba_P | 2026-10-10 15:21:06
(3 řádků)
sql> konec