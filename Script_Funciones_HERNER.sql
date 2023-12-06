DELIMITER //
CREATE FUNCTION ObtenerSaldo(IDCuenta INT) RETURNS DECIMAL(10, 2) DETERMINISTIC READS SQL DATA
BEGIN
    DECLARE saldo DECIMAL(10, 2);
    SELECT Saldo INTO saldo FROM Cuentas WHERE ID_Cuenta = IDCuenta;
    RETURN saldo;
END //


DELIMITER //
CREATE FUNCTION ObtenerNombreCliente(IDCliente INT) RETURNS VARCHAR(100)
BEGIN
    DECLARE nombre_cliente VARCHAR(100);

    SELECT CONCAT(Nombre, ' ', Apellido) INTO nombre_cliente
    FROM Clientes
    WHERE ID_Cliente = IDCliente;

    RETURN nombre_cliente;
END //



DELIMITER //
CREATE FUNCTION RealizarTransaccion(
    Monto DECIMAL(10, 2),
    IDCuentaOrigen INT,
    IDCuentaDestino INT,
    IDEmpleado INT,
    TipoTransaccion VARCHAR(20)
) RETURNS INT DETERMINISTIC READS SQL DATA
BEGIN
    -- Insertar la transacción
    INSERT INTO Transacciones (Monto, Fecha_Transaccion, ID_Cuenta_Origen, ID_Cuenta_Destino, ID_Empleado, Tipo_Transaccion)
    VALUES (Monto, NOW(), IDCuentaOrigen, IDCuentaDestino, IDEmpleado, TipoTransaccion);

    -- Actualizar saldos
    UPDATE Cuentas SET Saldo = Saldo - Monto WHERE ID_Cuenta = IDCuentaOrigen;
    UPDATE Cuentas SET Saldo = Saldo + Monto WHERE ID_Cuenta = IDCuentaDestino;

    RETURN LAST_INSERT_ID();
END //


