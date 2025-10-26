-- Estadísticas de citas por médico
SELECT IdMedico, COUNT(*) AS TotalCitas
FROM Turnos
GROUP BY IdMedico;