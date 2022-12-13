CREATE FUNCTION log_event() RETURNS TRIGGER LANGUAGE 'plpgsql' AS
$$
BEGIN
	INSERT INTO logs (evt) VALUES (concat('account "', OLD.usr, '"deleted'));
	RETURN OLD;
END
$$;
