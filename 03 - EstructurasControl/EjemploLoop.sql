USE bdcine;

DROP TABLE IF EXISTS t;
CREATE TABLE t(
    Enteros INT
);

DROP PROCEDURE IF EXISTS SimpleLoop;

DELIMITER //
CREATE PROCEDURE SimpleLoop()
BEGIN
    DECLARE cont INT;
    SET cont = 0;
    loop_label: LOOP
        INSERT INTO t VALUES (cont);
        SET cont = cont + 1;
        IF cont >=5 THEN
            LEAVE loop_label;
        END IF;
    END LOOP;
END // -- Usamos el nuevo delimitador para indicar el final del procedimiento
DELIMITER ;  -- Cambiamos el delimitador de vuelta a ;

Call SimpleLoop();
SELECT * FROM t;