USE bdcine;
DROP PROCEDURE IF EXISTS procCursor;

DELIMITER //
CREATE PROCEDURE procCursor(IN generoC VARCHAR(45), OUT tituloC VARCHAR(45), OUT codigoC INT)
BEGIN
    DECLARE fin INT DEFAULT 0;
    DECLARE miCursor CURSOR FOR
        SELECT id,titulo FROM peliculas WHERE genero=generoC;
    DECLARE CONTINUE HANDLER FOR NOT FOUND set fin=1;
    OPEN miCursor;
    REPEAT
        FETCH miCursor INTO idC,tituloCC;
    UNTIL fin=1 END REPEAT;
    CLOSE miCursor;
END //
DELIMITER ;

CALL procCursor("Aventuras",@t,@g);
SELECT @t;
SELECT @g;