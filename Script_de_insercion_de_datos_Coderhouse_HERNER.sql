-- Insertar datos en la tabla Clientes (Datos ficticios, solo para propósitos de ejemplo)
INSERT INTO Clientes (Nombre, Apellido, DNI, Direccion, Ciudad, Codigo_Postal, Telefono, Genero, Fecha_Nacimiento)
VALUES
('Luis', 'Pérez', '30567890', 'Calle Mitre 123', 'Buenos Aires', '1000', '1123456789', 'Masculino', '1980-05-20'),
('Ana', 'García', '20678912', 'Avenida Libertador 456', 'Córdoba', '5000', '1133334567', 'Femenino', '1992-08-15'),
('Martín', 'Rodríguez', '40789123', 'Ruta Nacional 789', 'Rosario', '2000', '1144445678', 'Masculino', '1985-11-10'),
('Sofía', 'Fernández', '20891234', 'Calle San Martín 678', 'Mendoza', '3000', '1155556789', 'Femenino', '1998-03-25'),
('Javier', 'López', '30912345', 'Avenida Rivadavia 901', 'Salta', '4000', '1166667890', 'Masculino', '1990-12-12');

-- Insertar datos en la tabla Cuentas
INSERT INTO Cuentas (ID_Cliente, ID_Sucursal, Saldo, Fecha_Apertura, Tipo_Cuenta)
VALUES
(1, 1, 5000.00, '2022-01-15', 'Cuenta Corriente'),
(2, 2, 7500.50, '2022-02-20', 'Cuenta de Ahorros'),
(3, 3, 12000.75, '2022-03-10', 'Cuenta Corriente'),
(4, 4, 3000.25, '2022-04-05', 'Cuenta de Ahorros'),
(5, 5, 10000.00, '2022-05-12', 'Cuenta Corriente');

-- Insertar datos en la tabla Transacciones
INSERT INTO Transacciones (Monto, Fecha_Transaccion, ID_Cuenta_Origen, ID_Cuenta_Destino, ID_Empleado, Tipo_Transaccion)
VALUES
(500.00, '2022-01-20 08:30:00', 1, 2, 1, 'Transferencia'),
(120.50, '2022-02-05 12:45:00', 2, 3, 2, 'Depósito'),
(1000.75, '2022-03-15 16:20:00', 3, 4, 3, 'Transferencia'),
(50.25, '2022-04-02 09:10:00', 4, 5, 4, 'Retiro'),
(300.00, '2022-05-10 14:30:00', 5, 1, 5, 'Depósito');


-- Insertar datos en la tabla Empleados
INSERT INTO Empleados (Nombre, Apellido, DNI, Direccion, Telefono, Cargo, ID_Sucursal)
VALUES
('Carlos', 'González', '30678901', 'Avenida Belgrano 123', '1155551234', 'Gerente', 1),
('Ana', 'Rodríguez', '20789123', 'Calle San Martín 456', '1166662345', 'Cajero', 2),
('Martina', 'Gómez', '40891234', 'Ruta Nacional 789', '1133333456', 'Analista', 3),
('Javier', 'Fernández', '50912345', 'Calle Sarmiento 678', '1144444567', 'Cajero', 4),
('Sofía', 'López', '61023456', 'Avenida Rivadavia 901', '1177775678', 'Analista', 5);

-- Insertar datos en la tabla Sucursales
INSERT INTO Sucursales (Nombre, Direccion, Ciudad, Codigo_Postal, Telefono, Gerente)
VALUES
('Sucursal A', 'Calle Principal 123', 'Ciudad A', '12345', '123456789', 'Ana Rodriguez'),
('Sucursal B', 'Avenida Central 456', 'Ciudad B', '54321', '987654321', 'Carlos Gomez'),
('Sucursal C', 'Ruta Secundaria 789', 'Ciudad C', '67890', '555111222', 'Elena Fernandez'),
('Sucursal D', 'Calle Peatonal 987', 'Ciudad D', '98765', '999333777', 'Diego Torres'),
('Sucursal E', 'Avenida Transitada 654', 'Ciudad E', '45678', '444888222', 'Laura Martinez');

-- Insertar datos en la tabla Tarjetas
INSERT INTO Tarjetas (Numero_Tarjeta, Fecha_Creacion, Fecha_Vencimiento, ID_Cliente, Tipo_Tarjeta, Codigo_Seguridad)
VALUES
('1234567812345678', '2022-01-25', '2025-01-31', 1, 'Débito', '123'),
('2345678923456789', '2022-02-15', '2024-02-29', 2, 'Crédito', '456'),
('3456789034567890', '2022-03-05', '2023-03-31', 3, 'Débito', '789'),
('4567890145678901', '2022-04-10', '2025-04-30', 4, 'Crédito', '012'),
('5678901256789012', '2022-05-20', '2024-05-31', 5, 'Débito', '345');


