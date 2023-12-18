-- Crear la tabla Clientes
CREATE TABLE Clientes (
    ID_Cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    DNI VARCHAR(20) UNIQUE NOT NULL,
    Direccion VARCHAR(100) NOT NULL,
    Ciudad VARCHAR(50) NOT NULL,
    Codigo_Postal VARCHAR(10) NOT NULL,
    Telefono VARCHAR(20) NOT NULL,
    Genero VARCHAR(10) NOT NULL,
    Fecha_Nacimiento DATE NOT NULL
);


-- Crear la tabla de Cuentas
CREATE TABLE Cuentas (
    ID_Cuenta INT AUTO_INCREMENT PRIMARY KEY,
    ID_Cliente INT NOT NULL,
    ID_Sucursal INT NOT NULL,
    Saldo DECIMAL(10, 2) NOT NULL,
    Fecha_Apertura DATE NOT NULL,
    Tipo_Cuenta VARCHAR(50) NOT NULL,
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente),
    FOREIGN KEY (ID_Sucursal) REFERENCES Sucursales(ID_Sucursal)
);


-- Crear la tabla de Transacciones
CREATE TABLE Transacciones (
    ID_Transaccion INT AUTO_INCREMENT PRIMARY KEY,
    Monto DECIMAL(10, 2) NOT NULL,
    Fecha_Transaccion DATETIME NOT NULL,
    ID_Cuenta_Origen INT NOT NULL,
    ID_Cuenta_Destino INT NOT NULL,
    ID_Empleado INT NOT NULL,
    Tipo_Transaccion VARCHAR(20) NOT NULL,
    FOREIGN KEY (ID_Cuenta_Origen) REFERENCES Cuentas(ID_Cuenta),
    FOREIGN KEY (ID_Cuenta_Destino) REFERENCES Cuentas(ID_Cuenta),
    FOREIGN KEY (ID_Empleado) REFERENCES Empleados(ID_Empleado)
);


-- Crear la tabla de Empleados
CREATE TABLE Empleados (
    ID_Empleado INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    DNI VARCHAR(20) UNIQUE NOT NULL,
    Direccion VARCHAR(100) NOT NULL,
    Telefono VARCHAR(20) NOT NULL,
    Cargo VARCHAR(50) NOT NULL,
    ID_Sucursal INT NOT NULL,
    FOREIGN KEY (ID_Sucursal) REFERENCES Sucursales(ID_Sucursal)
);


-- Crear la tabla de Sucursales
CREATE TABLE Sucursales (
    ID_Sucursal INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Direccion VARCHAR(100) NOT NULL,
    Ciudad VARCHAR(50) NOT NULL,
    Codigo_Postal VARCHAR(10) NOT NULL,
    Telefono VARCHAR(20) NOT NULL,
    Gerente VARCHAR(100) NOT NULL
);


-- Crear la tabla de Tarjetas
CREATE TABLE Tarjetas (
    ID_Tarjeta INT AUTO_INCREMENT PRIMARY KEY,
    Numero_Tarjeta VARCHAR(16) UNIQUE NOT NULL,
    Fecha_Creacion DATE NOT NULL,
    Fecha_Vencimiento DATE NOT NULL,
    ID_Cliente INT NOT NULL,
    Tipo_Tarjeta VARCHAR(50) NOT NULL,
    Codigo_Seguridad VARCHAR(3) NOT NULL,
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente)
);
