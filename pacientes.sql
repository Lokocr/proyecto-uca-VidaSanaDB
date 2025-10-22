CREATE TABLE Pacientes (
  id_paciente INT PRIMARY KEY IDENTITY,
  nombre VARCHAR(100),
  edad INT,
  telefono VARCHAR(20)
);

INSERT INTO Pacientes (nombre, edad, telefono)
VALUES ('Carlos Jiménez', 30, '8888-9999');
