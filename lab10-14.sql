CREATE FUNCTION calc_hash() RETURNS TRIGGER LANGUAGE 'plpgsql' AS
$$
BEGIN
        NEW.pass = md5(NEW.pass);
        RETURN NEW;
END
$$;
