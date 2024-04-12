-- Crear la base de datos escuela
CREATE DATABASE escuela;
USE escuela;

-- Crear la tabla alumnos
CREATE TABLE alumnos (
  id INT PRIMARY KEY,
  nombre VARCHAR(50),
  curso VARCHAR(10),
  nota DECIMAL(4,2)
);

-- Insertar algunos registros en la tabla alumnos
INSERT INTO alumnos VALUES
(1, 'Ana', '1A', 8.5),
(2, 'Luis', '1A', 7.0),
(3, 'Pedro', '1B', 6.5),
(4, 'Marta', '1B', 9.0),
(5, 'Carlos', '2A', 5.5),
(6, 'Elena', '2A', 8.0),
(7, 'Juan', '2B', 7.5),
(8, 'Sara', '2B', 6.0);

-- Crear el procedimiento almacenado calcular_promedio
DELIMITER //
CREATE PROCEDURE calcular_promedio(IN curso VARCHAR(10))
BEGIN
  DECLARE promedio DECIMAL(4,2);
  SELECT AVG(nota) INTO promedio FROM alumnos WHERE curso = curso;
  SELECT curso, promedio;
END //
DELIMITER ;

-- Invocar el procedimiento almacenado calcular_promedio con diferentes valores de curso
CALL calcular_promedio('1A');
CALL calcular_promedio('1B');
CALL calcular_promedio('2A');
CALL calcular_promedio('2B');