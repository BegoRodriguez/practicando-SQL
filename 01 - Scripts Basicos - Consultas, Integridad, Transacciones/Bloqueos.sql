-- Bloquear la tabla tbl_contador para escritura
LOCK TABLES tbl_contador WRITE;

-- Incrementar el contador y retornar el valor asignado
UPDATE tbl_contador SET valor = valor + 1;
SELECT valor FROM tbl_contador;

-- Liberar el bloqueo
UNLOCK TABLES;

LOCK TABLES WITH READ LOCK