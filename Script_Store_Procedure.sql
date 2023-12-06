DELIMITER //
CREATE PROCEDURE ObtenerInfoClienteCuentas(IN p_IDCliente INT)
BEGIN
    SELECT
        c.Nombre,
        c.Apellido,
        c.DNI,
        cc.ID_Cuenta,
        cc.Saldo,
        cc.Fecha_Apertura,
        cc.Tipo_Cuenta
    FROM Clientes c
    JOIN Cuentas cc ON c.ID_Cliente = cc.ID_Cliente
    WHERE c.ID_Cliente = p_IDCliente;
END //

CALL ObtenerInfoClienteCuentas(1);

DELIMITER //
CREATE PROCEDURE ActualizarDireccionEmpleado(IN p_IDEmpleado INT, IN p_NuevaDireccion VARCHAR(100))
BEGIN
    UPDATE Empleados SET Direccion = p_NuevaDireccion WHERE ID_Empleado = p_IDEmpleado;
END //

CALL ActualizarDireccionEmpleado(1, 'Pellegrini 4890');

DELIMITER //

CREATE PROCEDURE ObtenerEmpleadosPorSucursal(IN p_ID_Sucursal INT)
BEGIN
    SELECT Nombre, Apellido, Cargo
    FROM Empleados
    WHERE ID_Sucursal = p_ID_Sucursal;
END //

call ObtenerEmpleadosPorSucursal(2);

select * from sucursales;


