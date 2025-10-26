
-- Pacientes sin citas registradas
SELECT * FROM Pacientes
WHERE IdPaciente NOT IN (
    SELECT IdPaciente FROM Turnos
);
