CREATE TRIGGER tg_hash BEFORE INSERT ON accs FOR EACH ROW EXECUTE PROCEDURE calc_hash();
\df

\d accs
INSERT INTO accs (usr, pass) VALUES ('dobrinya', 'master');
SELECT * FROM accs;

CREATE TABLE logs(ts TIMESTAMP DEFAULT now(), evt VARCHAR(100));
\d
\d logs
