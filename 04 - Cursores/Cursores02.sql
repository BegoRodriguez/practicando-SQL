USE bdcine;
DROP PROCEDURE IF EXISTS procCursor;

DELIMITER //
CREATE PROCEDURE procCursor(IN codigoPelicula INT, OUT tituloC VARCHAR(45), OUT generoC VARCHAR(45))
BEGIN
    DECLARE fin INT DEFAULT 0;
    DECLARE miCursor CURSOR FOR
        SELECT titulo,genero FROM peliculas WHERE id=codigoPelicula;
    DECLARE CONTINUE HANDLER FOR NOT FOUND set fin=1;
    OPEN miCursor;
    REPEAT
        FETCH miCursor INTO tituloC,generoC;
    UNTIL fin=1 END REPEAT;
    CLOSE miCursor;
END //
DELIMITER ;

CALL procCursor(1,@t,@g);
SELECT @t;
SELECT @g;

