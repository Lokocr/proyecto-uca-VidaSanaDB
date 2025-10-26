-- Pacientes con su médico asignado
SELECT P.Nombre AS Paciente, M.Nombre AS Medico
FROM Turnos T
JOIN Pacientes P ON T.IdPaciente = P.IdPaciente
JOIN Medicos M ON T.IdMedico = M.IdMedico;