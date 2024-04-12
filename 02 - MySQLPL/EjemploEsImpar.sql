
USE world;
DROP FUNCTION IF EXISTS esImpar;

DELIMITER //
-- Devuelve 1 (TRUE) si el número es impar y 0 (FALSE) si es par
CREATE FUNCTION esImpar(numero int) 
	RETURNS int
BEGIN
DECLARE impar INT;
	IF MOD(numero,2)=0 THEN SET impar=FALSE;
	ELSE SET impar=TRUE; 
	END IF;
	RETURN (impar);
END //
DELIMITER ;

DROP PROCEDURE IF EXISTS muestra_estado;
DELIMITER //
CREATE PROCEDURE muestra_estado(IN numero INT)
BEGIN
IF (esImpar(numero)) THEN 
	SELECT CONCAT(numero," es impar");
ELSE 
	SELECT CONCAT(numero," es par");
END IF;
END //
DELIMITER ;

CALL muestra_estado(42);
CALL muestra_estado(43);