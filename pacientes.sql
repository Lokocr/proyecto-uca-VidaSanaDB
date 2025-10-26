-- Eliminar si ya existe
IF OBJECT_ID('dbo.Pacientes', 'U') IS NOT NULL
    DROP TABLE dbo.Pacientes;
GO

-- Crear tabla Pacientes
CREATE TABLE dbo.Pacientes (
    PacienteID INT IDENTITY(1,1) PRIMARY KEY,  
    Cedula NVARCHAR(20) UNIQUE NOT NULL,       
    Nombre NVARCHAR(100) NOT NULL,             
    Apellidos NVARCHAR(100) NOT NULL,          
    FechaNacimiento DATE NOT NULL,             
    Sexo CHAR(1) CHECK (Sexo IN ('M', 'F', 'O')),  
    Telefono NVARCHAR(30) NULL,                
    Email NVARCHAR(100) NULL,                  
    Direccion NVARCHAR(250) NULL,              
    FechaRegistro DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(), 
    Activo BIT NOT NULL DEFAULT 1              S
);
GO

-- Crear índices para búsquedas rápidas
CREATE INDEX IX_Pacientes_Apellidos ON dbo.Pacientes (Apellidos);
CREATE INDEX IX_Pacientes_Cedula ON dbo.Pacientes (Cedula);
GO

-- Insertar algunos registros de ejemplo
INSERT INTO dbo.Pacientes (Cedula, Nombre, Apellidos, FechaNacimiento, Sexo, Telefono, Email, Direccion)
VALUES
('1-1111-1111', 'Juan', 'Pérez', '1985-04-12', 'M', '+506 7000-1111', 'juan.perez@mail.com', 'San José, Calle 1'),
('2-2222-2222', 'Luisa', 'Rodríguez', '1992-09-05', 'F', '+506 7000-2222', 'luisa.rodriguez@mail.com', 'Heredia, Barrio Centro'),
('3-3333-3333', 'Miguel', 'Vargas', '2001-12-20', 'M', '+506 7000-3333', 'miguel.vargas@mail.com', 'Alajuela, Colonia X');
GO

-- Consultar pacientes registrados
SELECT * FROM dbo.Pacientes;
GO
