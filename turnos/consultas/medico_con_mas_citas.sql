
-- Médico con más citas del día
SELECT TOP 1 IdMedico, COUNT(*) AS TotalCitas
FROM Turnos
WHERE FechaTurno = CAST(GETDATE() AS DATE)
GROUP BY IdMedico
ORDER BY TotalCitas DESC;
