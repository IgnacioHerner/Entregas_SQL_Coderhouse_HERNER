DELIMITER //

CREATE TRIGGER log_cambios_clientes
BEFORE UPDATE ON Clientes
FOR EACH ROW
BEGIN
    -- Insertar una fila en LogCambiosClientes para cada columna modificada
    -- Capturar información sobre el usuario, fecha y hora de la operación
    INSERT INTO LogCambiosClientes (ID_Cliente, NombreCampoModificado, ValorAntiguo, ValorNuevo, Usuario, Fecha, Hora)
    SELECT 
        NEW.ID_Cliente,            -- Nuevo valor del ID_Cliente
        COLUMN_NAME,               -- Nombre de la columna
        OLD.COLUMN_NAME,           -- Valor antiguo de la columna
        NEW.COLUMN_NAME,           -- Nuevo valor de la columna
        CURRENT_USER(),            -- Usuario que realiza la operación
        CURDATE(),                 -- Fecha actual
        CURTIME()                  -- Hora actual
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_NAME = 'Clientes';
END //

DELIMITER //

-- Crear un trigger que se activará después de una actualización en la tabla Cuentas
CREATE TRIGGER log_cambios_cuentas
AFTER UPDATE ON Cuentas
FOR EACH ROW
BEGIN
    -- Insertar una fila en LogCambiosCuentas después de cada actualización
    -- Capturar información sobre el usuario, fecha y hora de la operación
    INSERT INTO LogCambiosCuentas (ID_Cuenta, SaldoAntiguo, SaldoNuevo, Usuario, Fecha, Hora)
    VALUES (
        NEW.ID_Cuenta,         -- Nuevo valor del ID_Cuenta
        OLD.Saldo,             -- Saldo antiguo
        NEW.Saldo,             -- Nuevo saldo
        CURRENT_USER(),        -- Usuario que realiza la operación
        CURDATE(),             -- Fecha actual
        CURTIME()              -- Hora actual
    );
END //



