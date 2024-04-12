USE bdcine;
DROP PROCEDURE IF EXISTS hola_mundo;

DELIMITER // 
CREATE PROCEDURE hola_mundo()
BEGIN
    SELECT 'hola mundo';
END //
DELIMITER ;



CALL hola_mundo();