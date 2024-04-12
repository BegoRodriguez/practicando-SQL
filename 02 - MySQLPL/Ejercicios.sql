use nba;

DROP FUNCTION IF EXISTS suma3;

DELIMITER //
-- Ejercicio 1
CREATE FUNCTION suma3(n1 float, n2 float, n3 float) 
returns float
BEGIN
	return n1+n2+n3;
END //
DELIMITER ;

SELECT suma3(0.1,0.2,0.3);