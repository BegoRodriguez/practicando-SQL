USE world;

DROP PROCEDURE IF EXISTS MostrarCiudades;

CREATE PROCEDURE MostrarCiudades()
BEGIN
    SELECT ID,Name,District,Population FROM city WHERE CountryCode = 'ESP';
END;

CALL MostrarCiudades();
