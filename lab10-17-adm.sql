CREATE OR REPLACE FUNCTION log_event() RETURNS TRIGGER LANGUAGE 'plpgsql' AS
$$
BEGIN
        IF OLD.usr = 'dobrinya' THEN
                INSERT INTO logs (evt) VALUES ('an attempt to delete admin account');
                RAISE NOTICE 'this will be reported!';
                RETURN NULL;
        END IF;
        INSERT INTO logs (evt) VALUES (concat('account "', OLD.usr, ' "deleted'));
        RETURN OLD;
END
$$;
