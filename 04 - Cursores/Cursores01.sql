USE bdcine;
DROP PROCEDURE IF EXISTS procCursor;

DELIMITER //
CREATE PROCEDURE procCursor(codigoPelicula INT)
BEGIN
    DECLARE tituloC VARCHAR(45);
    DECLARE miCursor CURSOR FOR
        SELECT titulo FROM peliculas WHERE id=codigoPelicula;
    OPEN miCursor;
    LOOP
        FETCH miCursor INTO tituloC;
    END LOOP;
    CLOSE miCursor;
END //
DELIMITER ;

CALL procCursor(1);