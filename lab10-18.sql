CREATE TRIGGER tg_log BEFORE DELETE ON accs FOR EACH ROW EXECUTE PROCEDURE log_event();
\d accs

DELETE FROM accs WHERE usr = 'test';
SELECT * FROM accs;
SELECT * FROM logs;