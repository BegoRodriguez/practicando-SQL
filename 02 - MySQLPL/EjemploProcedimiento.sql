USE nba;

CREATE PROCEDURE ContarEquipos3()
BEGIN
    SELECT * FROM equipos;
    SELECT COUNT(*) FROM equipos;
END;

CALL ContarEquipos3();