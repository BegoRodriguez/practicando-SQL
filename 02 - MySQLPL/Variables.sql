USE nba;
DROP PROCEDURE IF EXISTS SimpleProcedure;

DELIMITER // -- Cambiamos el delimitador a //
CREATE PROCEDURE SimpleProcedure()
BEGIN
  DECLARE x INT;
  SET x = 1;
  WHILE x <= 5 DO
    SELECT * FROM jugadores WHERE codigo = x;
    SET x = x + 1;
  END WHILE;
END // -- Usamos el nuevo delimitador para indicar el final del procedimiento
DELIMITER ;  -- Cambiamos el delimitador de vuelta a ;

CALL SimpleProcedure;