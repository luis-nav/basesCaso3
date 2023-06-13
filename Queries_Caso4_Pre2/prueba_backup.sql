SELECT Industria FROM Industrias;

-- SE HACE EL FULLBACKUP

INSERT INTO Industrias (Industria) VALUES 
('Deportiva'),
('Salud'),
('Higiene'),
('Metalurgica');

SELECT Industria FROM Industrias;

-- SE HACE EL INCREMENTAL

INSERT INTO Industrias (Industria) VALUES 
('Industria accidental')

-- RESTORE FULL
SELECT Industria FROM Industrias;

-- RESTORE INCREMENTAL

SELECT Industria FROM Industrias;

