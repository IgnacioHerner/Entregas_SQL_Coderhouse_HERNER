DELIMITER //
CREATE TRIGGER log_cambios_clientes
BEFORE UPDATE ON Clientes
FOR EACH ROW
BEGIN
    IF NEW.Nombre != OLD.Nombre THEN
        INSERT INTO LogCambiosClientes (ID_Cliente, NombreCampoModificado, ValorAntiguo, ValorNuevo, Usuario, Fecha, Hora)
        VALUES (NEW.ID_Cliente, 'Nombre', OLD.Nombre, NEW.Nombre, CURRENT_USER(), CURDATE(), CURTIME());
    END IF;

    IF NEW.Apellido != OLD.Apellido THEN
        INSERT INTO LogCambiosClientes (ID_Cliente, NombreCampoModificado, ValorAntiguo, ValorNuevo, Usuario, Fecha, Hora)
        VALUES (NEW.ID_Cliente, 'Apellido', OLD.Apellido, NEW.Apellido, CURRENT_USER(), CURDATE(), CURTIME());
    END IF;

    -- Agregar más bloques IF para otras columnas si es necesario
END //
DELIMITER ;


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



