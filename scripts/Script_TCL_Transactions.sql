-- Transaccion para la primera tabla
	START TRANSACTION;
    
-- Verifica si hay registros en la tabla Clientes y eliminas algunos
DELETE FROM clientes WHERE Nombre='Luis';

-- Verificaion adicional antes de hacer el commit
IF EXISTS (SELECT * FROM clientes WHERE Nombre = 'Luis') THEN
	COMMIT; -- Confirma la transaccion
ELSE
	ROLLBACK; -- Rollback si no se encontraron registros eliminados
END IF;  -- Revierte la transaccion

SELECT * FROM clientes;


	START TRANSACTION;
INSERT INTO Sucursales (Nombre, Direccion, Ciudad, Codigo_Postal, Telefono, Gerente)
VALUES
('Sucursal F', 'Calle Comercial 234', 'Ciudad F', '23456', '111222333', 'Martín Lopez'),
('Sucursal G', 'Avenida Principal 567', 'Ciudad G', '76543', '444555666', 'Julia Herrera'),
('Sucursal H', 'Ruta Rápida 876', 'Ciudad H', '87654', '999000111', 'Fernando Sánchez'),
('Sucursal I', 'Calle Tranquila 321', 'Ciudad I', '32109', '777888999', 'Laura Rodriguez'),
('Sucursal J', 'Avenida Despejada 876', 'Ciudad J', '09876', '333444555', 'Ricardo Fernandez'),
('Sucursal K', 'Ruta Movida 543', 'Ciudad K', '56789', '666777888', 'Ana Gomez'),
('Sucursal L', 'Calle Bulliciosa 210', 'Ciudad L', '10987', '222333444', 'Diego Morales'),
('Sucursal M', 'Avenida Estrecha 987', 'Ciudad M', '67801', '888999000', 'María Torres');

SAVEPOINT savepoint_after_4th_insert;
SAVEPOINT savepoint_after_8th_insert; 

RELEASE SAVEPOINT savepoint_after_4th_insert;

COMMIT;

