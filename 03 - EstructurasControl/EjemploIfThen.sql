USE world;
DROP PROCEDURE IF EXISTS SimpleIfThenElse;

DELIMITER // -- Cambiamos el delimitador a //
CREATE PROCEDURE SimpleIfThenElse(IN par1 INT)
BEGIN
DECLARE var1 INT;
    SET var1 = par1 + 1;
    IF var1 = 1 THEN
        SELECT ID,Name,District,Population FROM city WHERE CountryCode = 'ESP';
    ELSEIF var1 = 2 THEN
        SELECT ID,Name,District,Population FROM city WHERE CountryCode = 'ARG';
    ELSE 
        SELECT ID,Name,District,Population FROM city WHERE CountryCode = 'USA';
    END IF;
END // -- Usamos el nuevo delimitador para indicar el final del procedimiento
DELIMITER ;  -- Cambiamos el delimitador de vuelta a ;

CALL SimpleIfThenElse(0); -- CountryCode = 'ESP'
CALL SimpleIfThenElse(1); -- CountryCode = 'ARG'
CALL SimpleIfThenElse(2); -- CountryCode = 'USA'