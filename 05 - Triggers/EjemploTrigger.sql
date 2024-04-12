USE bdcine;

SELECT * FROM peliculas;
DROP TABLE IF EXISTS peliculas_replica;

-- Los campos deberían existir en la tabla original!!!!!
CREATE TABLE peliculas_replica
(
    id int primary key,
    titulo VARCHAR(50)
);


-- Creación de trigger que mantiene sincronizada una copia de seguridad
DROP TRIGGER IF EXISTS trigger1;
DELIMITER // 
CREATE TRIGGER trigger1 BEFORE INSERT ON peliculas FOR EACH ROW
BEGIN
    INSERT INTO peliculas_replica VALUES (new.id,new.titulo);
END //
DELIMITER ;


SELECT * FROM peliculas_replica; -- no tenemos peliculas
INSERT INTO peliculas VALUES (9,"Spiderman","Aventuras","2024-04-12","2024-04-20");
SELECT * FROM peliculas_replica; -- no tenemos peliculas