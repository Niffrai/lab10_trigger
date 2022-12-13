INSERT INTO accs (usr, pass) VALUES ('abv', '123');
SELECT * FROM accs;

DELETE FROM accs WHERE usr = 'abv';
SELECT * FROM accs;
SELECT * FROM logs;

