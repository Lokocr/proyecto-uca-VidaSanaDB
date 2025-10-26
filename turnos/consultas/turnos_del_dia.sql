
-- Turnos del día actual
SELECT * FROM Turnos
WHERE FechaTurno = CAST(GETDATE() AS DATE);
