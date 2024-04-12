USE world;
DROP PROCEDURE IF EXISTS SimpleRepeat;

DELIMITER //
CREATE PROCEDURE SimpleRepeat()
BEGIN
DECLARE i INT;
SET i=0;
loop1: REPEAT
    SET i=i+1;
    IF MOD(i,2)<>0 THEN -- Numero impar
        SELECT CONCAT(i," es impar");
    END IF;
    UNTIL i>=10
END REPEAT;
END // -- Usamos el nuevo delimitador para indicar el final del procedimiento
DELIMITER ;  -- Cambiamos el delimitador de vuelta a ;

CALL SimpleRepeat();