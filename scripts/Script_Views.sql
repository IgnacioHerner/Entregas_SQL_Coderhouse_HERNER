CREATE VIEW VistaClientesCuentas AS
SELECT
	cl.ID_Cliente,
    cl.Nombre,
    cl.Apellido,
    cl.DNI,
    cu.ID_Cuenta,
    cu.Saldo
FROM
	clientes cl
LEFT JOIN
	cuentas cu ON cl.ID_Cliente = cu.ID_Cliente;
    
CREATE VIEW VistaEmpleadosSucursales AS
SELECT
	e.ID_Empleado,
    e.Nombre,
    e.Apellido,
    e.DNI,
    e.Direccion,
    e.Telefono,
    e.Cargo,
    s.Nombre AS NombreSucursal
FROM
	empleados e
JOIN sucursales s ON e.ID_Sucursal = s.ID_Sucursal;

CREATE VIEW VistaTransaccionesDetalladas AS
SELECT
	t.ID_Transaccion,
    t.Monto,
    t.Fecha_Transaccion,
    t.Tipo_Transaccion,
    c1.Nombre AS ClienteOrigen,
    c2.Nombre AS ClienteDestino,
    e.Nombre AS NombreEmpleado
FROM
	transacciones t
JOIN
	cuentas c1 ON t.ID_Cuenta_Origen = c1.ID_Cuenta
JOIN
	cuentas c2 ON t.ID_Cuenta_Destino = c2.ID_Cuenta
JOIN
	empleados e ON t.ID_Empleado = e.ID_Empleado;
    


CREATE VIEW VistaTransaccionesDetalladas AS
SELECT
    t.ID_Transaccion,
    t.Monto,
    t.Fecha_Transaccion,
    t.Tipo_Transaccion,
    c1.Nombre AS ClienteOrigen,
    c2.Nombre AS ClienteDestino,
    e.Nombre AS NombreEmpleado
FROM
    Transacciones t
JOIN
    Cuentas co ON t.ID_Cuenta_Origen = co.ID_Cuenta
JOIN
    Cuentas cd ON t.ID_Cuenta_Destino = cd.ID_Cuenta
JOIN
    Clientes c1 ON co.ID_Cliente = c1.ID_Cliente
JOIN
    Clientes c2 ON cd.ID_Cliente = c2.ID_Cliente
JOIN
    Empleados e ON t.ID_Empleado = e.ID_Empleado;
    
CREATE VIEW VistaTarjetasClientesDetallada AS
SELECT
    t.ID_Tarjeta,
    t.Numero_Tarjeta,
    t.Fecha_Creacion,
    t.Fecha_Vencimiento,
    c.Nombre,
    c.Apellido
FROM
    Tarjetas t
JOIN
    Clientes c ON t.ID_Cliente = c.ID_Cliente;

CREATE VIEW VistaSucursalesEmpleados AS
SELECT
    s.ID_Sucursal,
    s.Nombre AS NombreSucursal,
    s.Direccion,
    s.Ciudad,
    e.Nombre AS NombreGerente
FROM
    Sucursales s
JOIN
    Empleados e ON s.Gerente = e.ID_Empleado;


