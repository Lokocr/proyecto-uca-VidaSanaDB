
-- Estadísticas de turnos
SELECT IdMedico, COUNT(*) AS TotalCitas, AVG(DATEDIFF(MINUTE, '08:00', HoraTurno)) AS PromedioMinutosDesdeInicio
FROM Turnos
GROUP BY IdMedico;
