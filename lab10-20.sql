DELETE FROM accs WHERE usr = 'dobrinya';
SELECT * FROM accs;
SELECT * FROM logs;

CREATE RULE log_protect AS ON DELETE TO logs DO INSTEAD NOTHING;

DELETE FROM logs;
SELECT * FROM logs;

CREATE TABLE quads (a FLOAT, b FLOAT, c FLOAT, x0 FLOAT, x1 FLOAT);
\dt
\d quads
