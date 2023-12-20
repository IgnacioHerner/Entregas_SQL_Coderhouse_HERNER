-- Crear usuario solo con permisos de lectura
CREATE USER 'usuario_lectura'@'localhost' IDENTIFIED BY 'contraseña_lectura';
GRANT SELECT ON gestor_bancario.* TO 'usuario_lectura'@'localhost';

-- Crear usuario con permisos de lectura, insercion y modificacion
CREATE USER 'usuario_modificacion'@'localhost' IDENTIFIED BY 'contraseña_modificacion';
GRANT SELECT,INSERT,UPDATE ON gestor_bancario.* TO 'usuario_modificacion'@'localhost';

-- Revocar permisos DELETE a ambos usuarios (ninguno de ellos podrá eliminar registros)
REVOKE DELETE ON gestor_bancario.* FROM 'usuario_lectura'@'localhost';
REVOKE DELETE ON gestor_bancario.* FROM 'usuario_modificacion'@'localhost';

SHOW GRANTS FOR 'usuario_modificacion'@'localhost';
SHOW GRANTS FOR 'usuario_lectura'@'localhost';

SELECT user, host FROM mysql.user;

SELECT user, host FROM mysql.user WHERE user = 'usuario_lectura';
SELECT user, host FROM mysql.user where user = 'usuario_modificacion';
