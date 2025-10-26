
-- Crear tabla Turnos
CREATE TABLE Turnos (
    IdTurno INT PRIMARY KEY IDENTITY,
    IdMedico INT FOREIGN KEY REFERENCES Medicos(IdMedico),
    IdPaciente INT FOREIGN KEY REFERENCES Pacientes(IdPaciente),
    FechaTurno DATE,
    HoraTurno TIME
);
