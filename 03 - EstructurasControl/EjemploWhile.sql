USE world;
DROP PROCEDURE IF EXISTS SimpleWhile;

DELIMITER //
CREATE PROCEDURE SimpleWhile()
BEGIN
DECLARE i INT;
SET i=1;
loop1: WHILE i<=10 DO
    IF MOD(i,2)<>0 THEN
    SELECT CONCAT(i," es impar");
    END IF;
    SET i=i+1;
END WHILE loop1;
END // -- Usamos el nuevo delimitador para indicar el final del procedimiento
DELIMITER ;  -- Cambiamos el delimitador de vuelta a ;

CALL SimpleWhile();