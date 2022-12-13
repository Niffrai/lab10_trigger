DROP TRIGGER quad_roots ON quads;
\df

CREATE TRIGGER quad_roots BEFORE INSERT OR DELETE ON quads FOR EACH ROW EXECUTE PROCEDURE solve_equation();
\d quads

INSERT INTO quads (a, b, c) VALUES (1, 4, 1);
SELECT * FROM quads;


