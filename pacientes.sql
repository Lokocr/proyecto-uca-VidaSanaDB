-- scripts/pacientes.sql
-- Gestión de pacientes en la clínica Vida Sana

CREATE TABLE IF NOT EXISTS Pacientes (
    paciente_id INT IDENTITY PRIMARY KEY,
    nombre NVARCHAR(100),
    fecha_nacimiento DATE,
    telefono NVARCHAR(20),
    email NVARCHAR(100),
    medico_id INT NULL,
    FOREIGN KEY (medico_id) REFERENCES Medicos(medico_id)
);

INSERT INTO Pacientes (nombre, fecha_nacimiento, telefono, email, medico_id) VALUES
('María Rodríguez', '1988-05-12', '8888-1001', 'maria.r@correo.com', 1),
('José Vargas', '2010-07-20', '8888-1002', 'jvargas@correo.com', 2),
('Ana Torres', '1995-11-03', '8888-0003', 'atorres@correo.com', NULL),
('Luis Fernández', '1979-02-14', '8888-1004', 'lfernandez@correo.com', 1),
('Sofia Ruiz', '2000-09-09', '8888-1005', 'sofia.ruiz@correo.com', NULL);

-- Listar pacientes con su médico 
SELECT p.paciente_id, p.nombre AS Paciente, m.nombre AS Medico
FROM Pacientes p
LEFT JOIN Medicos m ON p.medico_id = m.medico_id
ORDER BY p.nombre;

-- Pacientes sin citas registradas
SELECT p.paciente_id, p.nombre
FROM Pacientes p
LEFT JOIN Turnos t ON p.paciente_id = t.paciente_id
WHERE t.turno_id IS NULL
ORDER BY p.nombre;
