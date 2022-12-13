CREATE TRIGGER quad_roots BEFORE INSERT ON quads FOR EACH ROW EXECUTE PROCEDURE solve_equation();
\d quads

INSERT INTO quads (a, b, c) VALUES (1, 2, 3);
INSERT INTO quads (a, b, c) VALUES (2, 4, 2);
INSERT INTO quads (a, b, c) VALUES (1, 4, 3);

SELECT * FROM quads;

