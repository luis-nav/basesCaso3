-- Para hacer mas inserts
-- DBCC CHECKIDENT(BrandsRecipientes, RESEED, 2);
-- SELECT * FROM BrandsRecipientes;

use [esencialVerde]
 --Inserts Reciduos y Recipientes
insert into UnidadesDeMedidas (Unidad) values ('L');
insert into BrandsRecipientes (Nombre) values ('Tommy'),('MC'),('Apple'),('ACME'),('Suli'), ('Lizano');


insert into TiposResiduos (Tipo) values ('Liquido');
insert into TiposResiduos (Tipo) values ('Aceitoso');
insert into TiposResiduos (Tipo) values ('Solido');

insert into Residuos (Nombre, TipoResiduoID, UnidadDeMedidaID) values ('Aguas Jabonosas', 1, 1);
insert into Residuos (Nombre, TipoResiduoID, UnidadDeMedidaID) values ('Aceite Cocina', 2, 1);
insert into Residuos (Nombre, TipoResiduoID, UnidadDeMedidaID) values ('Gasolina', 2, 1),
('Papel', 3, 1), ('Aluminio', 3, 1), ('Aceite de Carro', 2, 1), ('Aguas Negras', 1, 1);

insert into TiposRecipientes (TipoResiduoID, Capacidad, UnidadDeMedidaID, BrandRecipienteID) 
values (1, 3.5, 1, 1),
(2, 3.5, 1, 1),
(1, 3.5, 1, 2);

insert into TiposRecipientes (TipoResiduoID, Capacidad, UnidadDeMedidaID, BrandRecipienteID) values
(1, 2, 1, 4),
(3, 7, 1, 6),
(1, 4, 1, 5),
(2, 2, 1, 5),
(2, 5.2, 1, 6),
(3, 2.5, 1, 4),
(3, 6.5, 1, 3),
(2, 3.5, 1, 3),
(3, 5.5, 1, 2),
(1, 10, 1, 3),
(1, 5, 1, 5),
(2, 1.5, 1, 4);



--Monedas y Ubicaciones
insert into Monedas (Nombre, Acronimo, MonedaBase, Simbolo) values
('US Dollar', 'USD', 1, '$'), ('CR Colon', 'CRC', 0, '₡');

SELECT CONVERT(datetime2(7), '2023-12-31 23:59:59');

insert into TiposDeCambio (MonedaID, InicioVigencia, FinalVigencia, [Default], PrecioCambio, IPAddress, Username, Checksum) values
(2, CONVERT(datetime2(7), '2023-01-01 00:00:01'), CONVERT(datetime2(7), '2023-12-31 23:59:59'), 1, 532.5, '192.167.0.11', 'Luis', CHECKSUM(2, CONVERT(datetime2(7), '2023-01-01 00:00:01'), CONVERT(datetime2(7), '2023-12-31 23:59:59'), 1, 532.5, '192.167.0.11', 'Luis'));

insert into Paises (Nombre, MonedaID, Acronimo) values ('Costa Rica', 2, 'CR');

insert into Estados (Nombre, PaisID) values ('San José', 1);

insert into Regiones (Nombre, EstadoID) values ('San Jose Oeste', 1);
insert into Regiones (Nombre, EstadoID) values ('San Jose Este', 1);

insert into Ubicaciones (PaisID, EstadoID, RegionID, Ubicacion, Zipcode) values
(1,1,1, geography::Point(9.94390066678532, -84.15057149768336, 4326), '10201'), 
(1,1,1, geography::Point(9.940288365925703, -84.15047414817396, 4326), '10201'),
(1,1,2, geography::Point(9.933981890776673, -84.05633752890807, 4326), '11501'),
(1,1,2, geography::Point(9.929587338046629, -84.05239102884492, 4326), '11501'),
(1,1,1, geography::Point(9.94390066378532, -84.15657149168336, 4326), '10201'), 
(1,1,1, geography::Point(9.940288465925703, -84.15047414811396, 4326), '10201'),
(1,1,2, geography::Point(9.933981890276673, -84.05633752891807, 4326), '11501'),
(1,1,2, geography::Point(9.929587338043629, -84.05239102884412, 4326), '11501');


insert into Locales (UbicacionID, RegionID) values
(2, 1), (4, 2);

insert into Camiones (Placa, LocalID) values
('111111', 1), ('112211', 1), ('333333', 2), ('443344', 2);

-- Insert Productores y Contratos
insert into Productores (Nombre) values
('McDonalds'), ('KFC');

insert into LocalesProductores (ProductorID , UbicacionID) values
(1, 1), (1, 3), (2, 1), (2, 3),(1, 5), (1, 6), (2, 7), (2, 8);

insert into Contratos (InicioVigencia, FinalVigencia, ProductorID, CostoMensual, MonedaID, TipoDeCambioID) values
(CONVERT(datetime2(7), '2023-01-01 00:00:01'), CONVERT(datetime2(7), '2023-12-31 23:59:59'), 1, 70000, 1, 1),
(CONVERT(datetime2(7), '2023-01-01 00:00:01'), CONVERT(datetime2(7), '2023-12-31 23:59:59'), 2, 65000, 1, 1);

insert into LocalesProductoresXContratos (ContratoID, LocalProductorID) values
(1,1), (1,2), (2,3), (2,4), (1,5), (1,6), (2,7), (2,8);

-- Recipientes Logs
insert into AccionesRecipientes (Descripcion) values
('Agregar a Inventario'), ('Cargar vacios al camion'), ('Cargar llenos al camion'), ('Entregar a Productor'), ('Vaciar en Lote'), ('Limpiar Recipientes'), ('Fuera de servicio');

insert into RecipientesLogs (Hora, TipoRecipienteID, LocalID, AccionRecipienteID, CantidadRecipientes, ResiduoID, IPAddress, Username, Checksum) values
(CONVERT(datetime2(7), '2023-01-01 06:00:01'), 1, 1, 1, 500, 1, '192.167.0.11', 'Luis', CHECKSUM(CONVERT(datetime2(7), '2023-01-01 06:00:01'), 1, 1, 1, 500, 1, '192.167.0.11', 'Luis'));

insert into RecipientesLogs (Hora, TipoRecipienteID, LocalID, AccionRecipienteID, CantidadRecipientes, ResiduoID, IPAddress, Username, Checksum)
SELECT Hora, 2, LocalID, AccionRecipienteID, CantidadRecipientes, ResiduoID, IPAddress, Username, CHECKSUM(CONVERT(datetime2(7), '2023-01-01 06:00:01'), 2, 1, 1, 500, 1, '192.167.0.11', 'Luis') FROM RecipientesLogs WHERE AccionRecipienteID = 1;

insert into RecipientesLogs (Hora, TipoRecipienteID, LocalID, AccionRecipienteID, CantidadRecipientes, ResiduoID, IPAddress, Username, Checksum)
SELECT CONVERT(datetime2(7), '2023-01-24 07:00:01'), 3, LocalID, AccionRecipienteID, CantidadRecipientes, ResiduoID, IPAddress, Username, CHECKSUM(CONVERT(datetime2(7), '2023-01-01 06:00:01'), 2, 1, 1, 500, 1, '192.167.0.11', 'Luis') FROM RecipientesLogs WHERE RecipienteLogID = 1;




-- Ir a dejar los recipientes
DECLARE @fechaActual datetime2;
DECLARE @fechaFinal datetime2;

SET @fechaActual = CONVERT(datetime2(7), '2023-01-07 07:00:01');

insert into RecipientesLogs (CamionID, ContratoID, Hora, TipoRecipienteID, LocalID, AccionRecipienteID, CantidadRecipientes, ResiduoID, IPAddress, Username, Checksum) values
	(1, 1, DATEADD(HOUR, 1, @fechaActual), 1, 1, 2, 25, 1, '192.167.0.11', 'Luis', CHECKSUM(DATEADD(HOUR, 1, @fechaActual), 1, 1, 2, 25, 1, '192.167.0.11', 'Luis')),
	(1, 1, DATEADD(HOUR, 1, @fechaActual), 2, 1, 2, 40, 2, '192.167.0.11', 'Luis', CHECKSUM(DATEADD(HOUR, 1, @fechaActual), 1, 1, 2, 25, 1, '192.167.0.11', 'Luis')),
	(1, 1, DATEADD(HOUR, 1, @fechaActual), 3, 1, 2, 25, 1, '192.167.0.11', 'Luis', CHECKSUM(DATEADD(HOUR, 1, @fechaActual), 1, 1, 2, 25, 1, '192.167.0.11', 'Luis')),

	(1, 1, DATEADD(HOUR, 2, @fechaActual), 1, 1, 4, 25, 1, '192.167.0.11', 'Luis', CHECKSUM(DATEADD(HOUR, 1, @fechaActual), 1, 1, 2, 25, 1, '192.167.0.11', 'Luis')),
	(1, 1, DATEADD(HOUR, 2, @fechaActual), 2, 1, 4, 40, 2, '192.167.0.11', 'Luis', CHECKSUM(DATEADD(HOUR, 1, @fechaActual), 1, 1, 2, 25, 1, '192.167.0.11', 'Luis')),
	(1, 1, DATEADD(HOUR, 2, @fechaActual), 3, 1, 4, 25, 1, '192.167.0.11', 'Luis', CHECKSUM(DATEADD(HOUR, 1, @fechaActual), 1, 1, 2, 25, 1, '192.167.0.11', 'Luis'));

-- DECLARE @fechaActual datetime2;
-- DECLARE @fechaFinal datetime2;


-- Loop de un local para generar su carga y cambio de recipientes  
SET @fechaActual = CONVERT(datetime2(7), '2023-01-09 07:00:01');
SET @fechaFinal = CONVERT(datetime2(7), '2023-11-24 07:00:01');

WHILE @fechaActual < @fechaFinal
BEGIN
	insert into RecipientesLogs (CamionID, ContratoID, Hora, TipoRecipienteID, LocalID, AccionRecipienteID, CantidadRecipientes, ResiduoID, IPAddress, Username, Checksum) values
	(1, 1, DATEADD(HOUR, 1, @fechaActual), 1, 1, 2, 25, 1, '192.167.0.11', 'Luis', CHECKSUM(DATEADD(HOUR, 1, @fechaActual), 1, 1, 2, 25, 1, '192.167.0.11', 'Luis')),
	(1, 1, DATEADD(HOUR, 1, @fechaActual), 2, 1, 2, 40, 2, '192.167.0.11', 'Luis', CHECKSUM(DATEADD(HOUR, 1, @fechaActual), 1, 1, 2, 25, 1, '192.167.0.11', 'Luis')),
	(1, 1, DATEADD(HOUR, 1, @fechaActual), 3, 1, 2, 25, 1, '192.167.0.11', 'Luis', CHECKSUM(DATEADD(HOUR, 1, @fechaActual), 1, 1, 2, 25, 1, '192.167.0.11', 'Luis')),

	(1, 1, DATEADD(HOUR, 2, @fechaActual), 1, 1, 4, 25, 1, '192.167.0.11', 'Luis', CHECKSUM(DATEADD(HOUR, 1, @fechaActual), 1, 1, 2, 25, 1, '192.167.0.11', 'Luis')),
	(1, 1, DATEADD(HOUR, 2, @fechaActual), 2, 1, 4, 40, 2, '192.167.0.11', 'Luis', CHECKSUM(DATEADD(HOUR, 1, @fechaActual), 1, 1, 2, 25, 1, '192.167.0.11', 'Luis')),
	(1, 1, DATEADD(HOUR, 2, @fechaActual), 3, 1, 4, 25, 1, '192.167.0.11', 'Luis', CHECKSUM(DATEADD(HOUR, 1, @fechaActual), 1, 1, 2, 25, 1, '192.167.0.11', 'Luis')),
	
	(1, 1, DATEADD(HOUR, 2, @fechaActual), 1, 1, 3, 25, 1, '192.167.0.11', 'Luis', CHECKSUM(DATEADD(HOUR, 1, @fechaActual), 1, 1, 2, 25, 1, '192.167.0.11', 'Luis')),
	(1, 1, DATEADD(HOUR, 2, @fechaActual), 2, 1, 3, 40, 2, '192.167.0.11', 'Luis', CHECKSUM(DATEADD(HOUR, 1, @fechaActual), 1, 1, 2, 25, 1, '192.167.0.11', 'Luis')),
	(1, 1, DATEADD(HOUR, 2, @fechaActual), 3, 1, 3, 25, 1, '192.167.0.11', 'Luis', CHECKSUM(DATEADD(HOUR, 1, @fechaActual), 1, 1, 2, 25, 1, '192.167.0.11', 'Luis'));
   
	SET @fechaActual = DATEADD(DAY, 7, @fechaActual);
END;

-- Otros tipos de recipientes al primer local
INSERT INTO RecipientesLogs (Hora, TipoRecipienteID, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, CantidadRecipientes, ResiduoID, CamionID, ContratoID)
SELECT Hora, 4 as TipoRecipienteID, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, 31 as CantidadRecipientes, ResiduoID, CamionID, ContratoID  FROM RecipientesLogs WHERE TipoRecipienteID = 1;

INSERT INTO RecipientesLogs (Hora, TipoRecipienteID, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, CantidadRecipientes, ResiduoID, CamionID, ContratoID)
SELECT Hora, 5 as TipoRecipienteID, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, 38 as CantidadRecipientes, ResiduoID, CamionID, ContratoID  FROM RecipientesLogs WHERE TipoRecipienteID = 1;

INSERT INTO RecipientesLogs (Hora, TipoRecipienteID, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, CantidadRecipientes, ResiduoID, CamionID, ContratoID)
SELECT Hora, 6 as TipoRecipienteID, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, 80 as CantidadRecipientes, ResiduoID, CamionID, ContratoID  FROM RecipientesLogs WHERE TipoRecipienteID = 1;

INSERT INTO RecipientesLogs (Hora, TipoRecipienteID, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, CantidadRecipientes, ResiduoID, CamionID, ContratoID)
SELECT Hora, 7 as TipoRecipienteID, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, 10 as CantidadRecipientes, ResiduoID, CamionID, ContratoID  FROM RecipientesLogs WHERE TipoRecipienteID = 1;

INSERT INTO RecipientesLogs (Hora, TipoRecipienteID, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, CantidadRecipientes, ResiduoID, CamionID, ContratoID)
SELECT Hora, 8 as TipoRecipienteID, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, 20 as CantidadRecipientes, ResiduoID, CamionID, ContratoID  FROM RecipientesLogs WHERE TipoRecipienteID = 1;

INSERT INTO RecipientesLogs (Hora, TipoRecipienteID, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, CantidadRecipientes, ResiduoID, CamionID, ContratoID)
SELECT Hora, 9 as TipoRecipienteID, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, 35 as CantidadRecipientes, ResiduoID, CamionID, ContratoID  FROM RecipientesLogs WHERE TipoRecipienteID = 1;

INSERT INTO RecipientesLogs (Hora, TipoRecipienteID, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, CantidadRecipientes, ResiduoID, CamionID, ContratoID)
SELECT Hora, 10 as TipoRecipienteID, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, 56 as CantidadRecipientes, ResiduoID, CamionID, ContratoID  FROM RecipientesLogs WHERE TipoRecipienteID = 1;

INSERT INTO RecipientesLogs (Hora, TipoRecipienteID, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, CantidadRecipientes, ResiduoID, CamionID, ContratoID)
SELECT Hora, 11 as TipoRecipienteID, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, 11 as CantidadRecipientes, ResiduoID, CamionID, ContratoID  FROM RecipientesLogs WHERE TipoRecipienteID = 1;

INSERT INTO RecipientesLogs (Hora, TipoRecipienteID, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, CantidadRecipientes, ResiduoID, CamionID, ContratoID)
SELECT Hora, 12 as TipoRecipienteID, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, 22 as CantidadRecipientes, ResiduoID, CamionID, ContratoID  FROM RecipientesLogs WHERE TipoRecipienteID = 1;

INSERT INTO RecipientesLogs (Hora, TipoRecipienteID, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, CantidadRecipientes, ResiduoID, CamionID, ContratoID)
SELECT Hora, 13 as TipoRecipienteID, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, 42 as CantidadRecipientes, ResiduoID, CamionID, ContratoID  FROM RecipientesLogs WHERE TipoRecipienteID = 1;

INSERT INTO RecipientesLogs (Hora, TipoRecipienteID, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, CantidadRecipientes, ResiduoID, CamionID, ContratoID)
SELECT Hora, 14 as TipoRecipienteID, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, 45 as CantidadRecipientes, ResiduoID, CamionID, ContratoID  FROM RecipientesLogs WHERE TipoRecipienteID = 1;

INSERT INTO RecipientesLogs (Hora, TipoRecipienteID, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, CantidadRecipientes, ResiduoID, CamionID, ContratoID)
SELECT Hora, 15 as TipoRecipienteID, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, 34 as CantidadRecipientes, ResiduoID, CamionID, ContratoID  FROM RecipientesLogs WHERE TipoRecipienteID = 1;



-- Insert into selects de otros locales

/*
SELECT LP.LocalProductorID, R.Nombre, L.LocalID, C.ContratoID, Ca.CamionID FROM Productores P
LEFT JOIN LocalesProductores LP on P.ProductorID = LP.ProductorID
LEFT JOIN Ubicaciones U on LP.UbicacionID = U.UbicacionID
LEFT JOIN Regiones R on U.RegionID = R.RegionID
LEFT JOIN Locales L on L.RegionID = R.RegionID
LEFT JOIN Contratos C on C.ProductorID = P.ProductorID
LEFT JOIN Camiones Ca on Ca.LocalID = L.LocalID
ORDER BY LP.LocalProductorID;
*/

DECLARE @CamionI int;
DECLARE @ContratoI int;
DECLARE @LocalI int


-- Local 2
SET @CamionI = 4;
SET @ContratoI = 1;
SET @LocalI = 2;


INSERT INTO RecipientesLogs (Hora, TipoRecipienteID, CantidadRecipientes, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, ResiduoID, ContratoID, CamionID)
SELECT TOP 2115 DATEADD(MINUTE, CONVERT(INT, RAND(1)*2000) % 61 - 30, Hora) as Hora, TipoRecipienteID, CantidadRecipientes + CONVERT(INT, RAND(1)*2000) % 20 + 1 as CantidadRecipientes, IPAddress, Username, 
CHECKSUM(Hora, TipoRecipienteID, IPAddress, Username, LocalID, AccionRecipienteID, CantidadRecipientes, ResiduoID, CamionID, ContratoID) as [Checksum]
, @LocalI as LocalID, AccionRecipienteID, 1, @ContratoI as ContratoID, @CamionI as CamionID FROM RecipientesLogs;


-- Local 3
SET @CamionI = 2;
SET @ContratoI = 2;
SET @LocalI = 1;


INSERT INTO RecipientesLogs (Hora, TipoRecipienteID, CantidadRecipientes, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, ResiduoID, ContratoID, CamionID)
SELECT TOP 2115 DATEADD(MINUTE, CONVERT(INT, RAND(1)*2000) % 61 - 30, Hora) as Hora, TipoRecipienteID, CantidadRecipientes + CONVERT(INT, RAND(1)*2000) % 20 + 1 as CantidadRecipientes, IPAddress, Username, 
CHECKSUM(Hora, TipoRecipienteID, IPAddress, Username, LocalID, AccionRecipienteID, CantidadRecipientes, ResiduoID, CamionID, ContratoID) as [Checksum]
, @LocalI as LocalID, AccionRecipienteID, 1, @ContratoI as ContratoID, @CamionI as CamionID FROM RecipientesLogs;


-- Local 4
SET @CamionI = 3;
SET @ContratoI = 2;
SET @LocalI = 2;


INSERT INTO RecipientesLogs (Hora, TipoRecipienteID, CantidadRecipientes, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, ResiduoID, ContratoID, CamionID)
SELECT TOP 2115 DATEADD(MINUTE, CONVERT(INT, RAND(1)*2000) % 61 - 30, Hora) as Hora, TipoRecipienteID, CantidadRecipientes + CONVERT(INT, RAND(1)*2000) % 20 + 1 as CantidadRecipientes, IPAddress, Username, 
CHECKSUM(Hora, TipoRecipienteID, IPAddress, Username, LocalID, AccionRecipienteID, CantidadRecipientes, ResiduoID, CamionID, ContratoID) as [Checksum]
, @LocalI as LocalID, AccionRecipienteID, 1, @ContratoI as ContratoID, @CamionI as CamionID FROM RecipientesLogs;


-- Local 5
SET @CamionI = 1;
SET @ContratoI = 1;
SET @LocalI = 1;


INSERT INTO RecipientesLogs (Hora, TipoRecipienteID, CantidadRecipientes, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, ResiduoID, ContratoID, CamionID)
SELECT TOP 2115 DATEADD(MINUTE, CONVERT(INT, RAND(1)*2000) % 61 - 30, Hora) as Hora, TipoRecipienteID, CantidadRecipientes + CONVERT(INT, RAND(1)*2000) % 20 + 1 as CantidadRecipientes, IPAddress, Username, 
CHECKSUM(Hora, TipoRecipienteID, IPAddress, Username, LocalID, AccionRecipienteID, CantidadRecipientes, ResiduoID, CamionID, ContratoID) as [Checksum]
, @LocalI as LocalID, AccionRecipienteID, 1, @ContratoI as ContratoID, @CamionI as CamionID FROM RecipientesLogs;


-- Local 6
SET @CamionI = 2;
SET @ContratoI = 1;
SET @LocalI = 1;


INSERT INTO RecipientesLogs (Hora, TipoRecipienteID, CantidadRecipientes, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, ResiduoID, ContratoID, CamionID)
SELECT TOP 2115 DATEADD(MINUTE, CONVERT(INT, RAND(1)*2000) % 61 - 30, Hora) as Hora, TipoRecipienteID, CantidadRecipientes + CONVERT(INT, RAND(1)*2000) % 20 + 1 as CantidadRecipientes, IPAddress, Username, 
CHECKSUM(Hora, TipoRecipienteID, IPAddress, Username, LocalID, AccionRecipienteID, CantidadRecipientes, ResiduoID, CamionID, ContratoID) as [Checksum]
, @LocalI as LocalID, AccionRecipienteID, 1, @ContratoI as ContratoID, @CamionI as CamionID FROM RecipientesLogs;


-- Local 7
SET @CamionI = 3;
SET @ContratoI = 2;
SET @LocalI = 2;


INSERT INTO RecipientesLogs (Hora, TipoRecipienteID, CantidadRecipientes, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, ResiduoID, ContratoID, CamionID)
SELECT TOP 2115 DATEADD(MINUTE, CONVERT(INT, RAND(1)*2000) % 61 - 30, Hora) as Hora, TipoRecipienteID, CantidadRecipientes + CONVERT(INT, RAND(1)*2000) % 20 + 1 as CantidadRecipientes, IPAddress, Username, 
CHECKSUM(Hora, TipoRecipienteID, IPAddress, Username, LocalID, AccionRecipienteID, CantidadRecipientes, ResiduoID, CamionID, ContratoID) as [Checksum]
, @LocalI as LocalID, AccionRecipienteID, 1, @ContratoI as ContratoID, @CamionI as CamionID FROM RecipientesLogs;


-- Local 8
SET @CamionI = 4;
SET @ContratoI = 2;
SET @LocalI = 2;


INSERT INTO RecipientesLogs (Hora, TipoRecipienteID, CantidadRecipientes, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, ResiduoID, ContratoID, CamionID)
SELECT TOP 2115 DATEADD(MINUTE, CONVERT(INT, RAND(1)*2000) % 61 - 30, Hora) as Hora, TipoRecipienteID, CantidadRecipientes + CONVERT(INT, RAND(1)*2000) % 20 + 1 as CantidadRecipientes, IPAddress, Username, 
CHECKSUM(Hora, TipoRecipienteID, IPAddress, Username, LocalID, AccionRecipienteID, CantidadRecipientes, ResiduoID, CamionID, ContratoID) as [Checksum]
, @LocalI as LocalID, AccionRecipienteID, 1, @ContratoI as ContratoID, @CamionI as CamionID FROM RecipientesLogs;


-- Updates Residuos

--SELECT R.ResiduoID, TRe.Tipo, R.Nombre, TR.TipoRecipienteID
--FROM TiposRecipientes  TR
--LEFT JOIN TiposResiduos TRe on TR.TipoResiduoID = TRe.TipoResiduoID
--LEFT JOIN Residuos R on TRe.TipoResiduoID = R.TipoResiduoID;

-- Primera Mitad
UPDATE RecipientesLogs SET ResiduoID = 2 WHERE RecipienteLogID <= 8460 AND TipoRecipienteID = 2;
--UPDATE RecipientesLogs SET ResiduoID = 1 WHERE RecipienteLogID <= 8460 AND TipoRecipienteID = 3;
--UPDATE RecipientesLogs SET ResiduoID = 1 WHERE RecipienteLogID <= 8460 AND TipoRecipienteID = 4;
UPDATE RecipientesLogs SET ResiduoID = 3 WHERE RecipienteLogID <= 8460 AND TipoRecipienteID = 5;
--UPDATE RecipientesLogs SET ResiduoID = 1 WHERE RecipienteLogID <= 8460 AND TipoRecipienteID = 6;
UPDATE RecipientesLogs SET ResiduoID = 2 WHERE RecipienteLogID <= 8460 AND TipoRecipienteID = 7;
UPDATE RecipientesLogs SET ResiduoID = 2 WHERE RecipienteLogID <= 8460 AND TipoRecipienteID = 8;
UPDATE RecipientesLogs SET ResiduoID = 3 WHERE RecipienteLogID <= 8460 AND TipoRecipienteID = 9;
UPDATE RecipientesLogs SET ResiduoID = 3 WHERE RecipienteLogID <= 8460 AND TipoRecipienteID = 10;
UPDATE RecipientesLogs SET ResiduoID = 2 WHERE RecipienteLogID <= 8460 AND TipoRecipienteID = 11;
UPDATE RecipientesLogs SET ResiduoID = 3 WHERE RecipienteLogID <= 8460 AND TipoRecipienteID = 12;
--UPDATE RecipientesLogs SET ResiduoID = 1 WHERE RecipienteLogID <= 8460 AND TipoRecipienteID = 13;
--UPDATE RecipientesLogs SET ResiduoID = 1 WHERE RecipienteLogID <= 8460 AND TipoRecipienteID = 14;
UPDATE RecipientesLogs SET ResiduoID = 2 WHERE RecipienteLogID <= 8460 AND TipoRecipienteID = 15;

-- Segunda Mitad
UPDATE RecipientesLogs SET ResiduoID = 6 WHERE RecipienteLogID > 8460 AND TipoRecipienteID = 1;
UPDATE RecipientesLogs SET ResiduoID = 5 WHERE RecipienteLogID > 8460 AND TipoRecipienteID = 2;
UPDATE RecipientesLogs SET ResiduoID = 6 WHERE RecipienteLogID > 8460 AND TipoRecipienteID = 3;
UPDATE RecipientesLogs SET ResiduoID = 6 WHERE RecipienteLogID > 8460 AND TipoRecipienteID = 4;
UPDATE RecipientesLogs SET ResiduoID = 4 WHERE RecipienteLogID > 8460 AND TipoRecipienteID = 5;
UPDATE RecipientesLogs SET ResiduoID = 6 WHERE RecipienteLogID > 8460 AND TipoRecipienteID = 6;
UPDATE RecipientesLogs SET ResiduoID = 5 WHERE RecipienteLogID > 8460 AND TipoRecipienteID = 7;
UPDATE RecipientesLogs SET ResiduoID = 5 WHERE RecipienteLogID > 8460 AND TipoRecipienteID = 8;
UPDATE RecipientesLogs SET ResiduoID = 4 WHERE RecipienteLogID > 8460 AND TipoRecipienteID = 9;
UPDATE RecipientesLogs SET ResiduoID = 4 WHERE RecipienteLogID > 8460 AND TipoRecipienteID = 10;
UPDATE RecipientesLogs SET ResiduoID = 5 WHERE RecipienteLogID > 8460 AND TipoRecipienteID = 11;
UPDATE RecipientesLogs SET ResiduoID = 4 WHERE RecipienteLogID > 8460 AND TipoRecipienteID = 12;
UPDATE RecipientesLogs SET ResiduoID = 6 WHERE RecipienteLogID > 8460 AND TipoRecipienteID = 13;
UPDATE RecipientesLogs SET ResiduoID = 6 WHERE RecipienteLogID > 8460 AND TipoRecipienteID = 14;
UPDATE RecipientesLogs SET ResiduoID = 5 WHERE RecipienteLogID > 8460 AND TipoRecipienteID = 15;

SELECT * FROM RecipientesLogs;

-- Inserts para store procedure
insert into Actores values ('Alejandro')
insert into Actores values ('Beatriz')
insert into Actores values ('Carlos')
insert into Actores values ('David')

insert into Industrias values ('Alimenticia'), ('Vestimenta'), ('Deportiva')

insert into Productores values (1, 'Forever21', 2)
insert into Productores values (2, 'Ekono', 2)
insert into Productores values (3, 'Adidas', 3)
insert into Productores values (4, 'Nike', 3)

insert into Ciudades values ('San Pedro', 1)
insert into Ciudades values ('Escazu', 1)
insert into Ciudades values ('Tibas', 1)

insert into EmpresasRecolectoras values ('Municipalidad', 1)
insert into EmpresasRecolectoras values ('Hoja Verde', 2)
insert into EmpresasRecolectoras values ('Ciudad Limpia', 3)

insert into ActoresXContrato values (1, 2)
insert into ActoresXContrato values (2, 1)
insert into ActoresXContrato values (3, 2)

insert into Locales values (1, NULL, 2)

-- TODAS FECHAS 
-- INICIO: CONVERT(datetime2(7), '2023-01-01 00:00:01')
-- FIN: CONVERT(datetime2(7), '2023-12-31 00:00:01')
--INSERTAR 4 CICLOS DE RECOLECCION CON LocalProductorXContratoID =1, =2, =3, =4
-- CADA CICLO 

-- insert into CiclosDeRecoleccion values ('2023-05-15 07:00:00', 7, 1, 2, 2, 1)
-- insert into CiclosDeRecoleccion values ('2023-05-17 07:00:00', 7, 2, 3, 1, 1)
select * from CiclosDeRecoleccion
INSERT INTO CiclosDeRecoleccion VALUES (CONVERT(datetime2(7), '2023-01-01 00:00:01'), 7, 1, null, 1, null)
INSERT INTO CiclosDeRecoleccion VALUES (CONVERT(datetime2(7), '2023-01-01 00:00:01'), 7, 2, null, 2, null)
INSERT INTO CiclosDeRecoleccion VALUES (CONVERT(datetime2(7), '2023-01-01 00:00:01'), 7, 3, null, 3, null)
INSERT INTO CiclosDeRecoleccion VALUES (CONVERT(datetime2(7), '2023-01-01 00:00:01'), 7, 4, null, 4, null)

-- insert into VolumenesRecoleccion values (1, '2023-01-01', '2023-12-31', 500.80, 1, 1)
-- insert into VolumenesRecoleccion values (2, '2022-01-01', '2023-12-31', 1000.52, 1, 2)
-- insert into VolumenesRecoleccion values (1, '2023-10-01', '2023-12-31', 80.80, 1, 5)
-- insert into VolumenesRecoleccion values (2, '2023-06-01', '2023-12-31', 1500.52, 1, 6)
select * from VolumenesRecoleccion
INSERT INTO VolumenesRecoleccion (CicloDeRecoleccionID, InicioVigencia, FinalVigencia, Volumen, UnidadDeMedidaID, ResiduoID)
SELECT 1, CONVERT(date, '2023-01-01'), CONVERT(date, '2023-12-31'), 1000, 1, ResiduoID FROM Residuos;
INSERT INTO VolumenesRecoleccion (CicloDeRecoleccionID, InicioVigencia, FinalVigencia, Volumen, UnidadDeMedidaID, ResiduoID)
SELECT 2, CONVERT(date, '2023-01-01'), CONVERT(date, '2023-12-31'), 1000, 1, ResiduoID FROM Residuos;
INSERT INTO VolumenesRecoleccion (CicloDeRecoleccionID, InicioVigencia, FinalVigencia, Volumen, UnidadDeMedidaID, ResiduoID)
SELECT 3, CONVERT(date, '2023-01-01'), CONVERT(date, '2023-12-31'), 1000, 1, ResiduoID FROM Residuos;
INSERT INTO VolumenesRecoleccion (CicloDeRecoleccionID, InicioVigencia, FinalVigencia, Volumen, UnidadDeMedidaID, ResiduoID)
SELECT 4, CONVERT(date, '2023-01-01'), CONVERT(date, '2023-12-31'), 1000, 1, ResiduoID FROM Residuos;


-- BALANCES KFC Y MAC
INSERT INTO BalancesLogs (MonedaID, MontoTotal, MontoAñadido, PostTime, IPAddress, Username, TipoDeCambioID, ProductorID, Cheksum) VALUES 
(2, 0, 0, CONVERT(datetime2(7), '2023-01-01 00:00:01'), '127.0.0.1', 'Luis', 1, 1, CHECkSUM(2, 0, 0, CONVERT(datetime2(7), '2023-01-01 00:00:01'), '127.0.0.1', 'Luis', 1, 1)),
(2, 0, 0, CONVERT(datetime2(7), '2023-01-01 00:00:01'), '127.0.0.1', 'Luis', 1, 2, CHECkSUM(2, 0, 0, CONVERT(datetime2(7), '2023-01-01 00:00:01'), '127.0.0.1', 'Luis', 1, 2));

INSERT INTO BalancesLogs (MonedaID, MontoTotal, MontoAñadido, PostTime, IPAddress, Username, TipoDeCambioID, ProductorID, Cheksum) VALUES 
(2, 5000000, 5000000, CONVERT(datetime2(7), '2023-02-01 00:00:01'), '127.0.0.1', 'Luis', 1, 1, CHECkSUM(2, 5000000, 5000000, CONVERT(datetime2(7), '2023-01-01 00:00:01'), '127.0.0.1', 'Luis', 1, 1));



-- LLENADO NUEVO

--UPDATE Ubicaciones SET CiudadID = 2 WHERE UbicacionID > 0;
--UPDATE Ubicaciones SET CiudadID = 1 WHERE UbicacionID = 3 or UbicacionID > 6;
--INSERT INTO RecipientesLogs (Hora, TipoRecipienteID, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, CantidadRecipientes, ResiduoID, CamionID, ContratoID)
--SELECT DATEADD(MINUTE, 30, Hora),TipoRecipienteID, IPAddress, Username, Checksum, LocalID, 5, CantidadRecipientes, ResiduoID, CamionID, ContratoID FROM RecipientesLogs
--INSERT INTO AccionesRecipientes (Descripcion) VALUES ('Entregar a Recolector');
--INSERT INTO Contratos (InicioVigencia, FinalVigencia, EmpresaRecolectoraID, CostoMensual, MonedaID, TipoDeCambioID)
--VALUES (CONVERT(date, '2023-01-01'), CONVERT(date, '2023-12-31'), 2, 40000, 1, 1);
--INSERT INTO RecipientesLogs (Hora, TipoRecipienteID, IPAddress, Username, Checksum, LocalID, AccionRecipienteID, CantidadRecipientes, ResiduoID, CamionID, ContratoID)
--SELECT Hora,TipoRecipienteID, IPAddress, Username, Checksum, LocalID, 5, FLOOR(CantidadRecipientes/1.5), ResiduoID, CamionID, 3 
--FROM RecipientesLogs
--WHERE AccionRecipienteID = 5 AND ContratoID = 1;
--DELETE FROM RecipientesLogs WHERE AccionRecipienteID = 5 AND CantidadRecipientes > 200;




INSERT INTO LotesDesechos (HoraApertura, LocalID, ResiduoID, Checksum, Username, IPAddress)
SELECT DISTINCT Hora, LocalID, ResiduoID, Checksum, Username, IPAddress FROM RecipientesLogs
WHERE AccionRecipienteID = 5;

DELETE FROM ProcesosResiduos WHERE ProcesoResiduoID > 0;
DBCC CHECKIDENT(ProcesosResiduos, RESEED, 0);

INSERT INTO ProcesosResiduos (ResiduoID,DesechoReciclable,Nombre)
SELECT ResiduoID, 0, 'a' FROM Residuos;

DELETE FROM CostosProcesosXPaises WHERE CostoProcesoXPaisID > 0;
DBCC CHECKIDENT(CostosProcesosXPaises, RESEED, 0);

INSERT INTO CostosProcesosXPaises (Tarifa, PaisID, MonedaID, InicioVigencia, FinalVigencia, [Default], IPAddress, Username, CHECKSUM, ProcesoResiduoID)
SELECT 3000*((ProcesoResiduoID%2)+1), 1, 1, CONVERT(datetime2(7), '2023-01-01 00:00:01'), CONVERT(datetime2(7), '2023-12-31 00:00:01'), 1, '192.167.0.11', 'Luis', CHECKSUM('192.167.0.11', 'Luis'), ProcesoResiduoID FROM ProcesosResiduos;

DELETE FROM ProcesosResiduosLogs WHERE ProcesoResiduoLogID > 0;
DBCC CHECKIDENT(ProcesosResiduosLogs, RESEED, 0);

INSERT INTO ProcesosResiduosLogs (Hora, LocalID, CostoProcesoXPaisID, ResiduoID, Username, IPAddress, Checksum, LoteDesechoID)
SELECT HoraApertura, LocalID, ResiduoID, ResiduoID, Username, IPAddress, Checksum, LoteDesechoID 
FROM LotesDesechos;










-- Llenado para reporting

--Tablas con llenado automatico:

--ProcesosResiduosLogs (1)
--CostosProcesosXPaises (1)
--ProcesosResiduos (1)
--PreciosProductosXPaises (2)
-- Antes -> DBCC CHECKIDENT(Contratos, RESEED, 2)
--AperturasCajas (3)
--Ventas (3)
--Contratos (3)
--ProductosXVentas (4)

insert into LotesDesechos 
values (1, 1, CONVERT(datetime2(7), '2023-01-01 00:00:01'), '192.167.0.11', 'Luis', CHECKSUM(CONVERT(datetime2(7), '2023-01-01 06:00:01'), 1, 1, 1, 500, 1, '192.167.0.11', 'Luis'))
insert into LotesDesechos 
values (2, 5, CONVERT(datetime2(7), '2023-02-01 00:00:01'), '192.167.0.11', 'Luis', CHECKSUM(CONVERT(datetime2(7), '2023-02-01 06:00:01'), 1, 1, 1, 500, 1, '192.167.0.11', 'Luis'))
insert into LotesDesechos 
values (3, 7, CONVERT(datetime2(7), '2023-03-01 00:00:01'), '192.167.0.11', 'Luis', CHECKSUM(CONVERT(datetime2(7), '2023-03-01 06:00:01'), 1, 1, 1, 500, 1, '192.167.0.11', 'Luis'))
insert into LotesDesechos 
values (1, 2, CONVERT(datetime2(7), '2023-04-01 00:00:01'), '192.167.0.11', 'Luis', CHECKSUM(CONVERT(datetime2(7), '2023-04-01 06:00:01'), 1, 1, 1, 500, 1, '192.167.0.11', 'Luis'))
insert into LotesDesechos 
values (2, 3, CONVERT(datetime2(7), '2023-05-01 00:00:01'), '192.167.0.11', 'Luis', CHECKSUM(CONVERT(datetime2(7), '2023-05-01 06:00:01'), 1, 1, 1, 500, 1, '192.167.0.11', 'Luis'))
insert into LotesDesechos 
values (3, 4, CONVERT(datetime2(7), '2023-06-01 00:00:01'), '192.167.0.11', 'Luis', CHECKSUM(CONVERT(datetime2(7), '2023-06-01 06:00:01'), 1, 1, 1, 500, 1, '192.167.0.11', 'Luis'))
insert into LotesDesechos 
values (1, 6, CONVERT(datetime2(7), '2023-07-01 00:00:01'), '192.167.0.11', 'Luis', CHECKSUM(CONVERT(datetime2(7), '2023-07-01 06:00:01'), 1, 1, 1, 500, 1, '192.167.0.11', 'Luis'))

insert into Productos values ('Colador', 'Utencilio de cocina', 1, 1)
insert into Productos values ('Lapiz', 'Utencilio de oficina', 1, 5)
insert into Productos values ('Bolsa', 'Utencilio para mover cosas', 1, 3)
insert into Productos values ('Borrador', 'Utencilio de oficina', 1, 7)
insert into Productos values ('Libro', 'Utencilio de oficina', 1, 2)
insert into Productos values ('Cobija', 'Utencilio domestico', 1, 6)
insert into Productos values ('Regla', 'Utencilio de oficina', 1, 22)
insert into Productos values ('Folder', 'Utencilio de oficina', 1, 79)
insert into Productos values ('Toalla', 'Utencilio domestico', 1, 8)
insert into Productos values ('Maceta', 'Utencilio domestico', 1, 14)

insert into TiposDePagos values ('Efectivo'), ('Tarjeta'), ('Sinpe'), ('Transferencia')

update RecipientesLogs set LoteDesechoID = 1 where RecipienteLogID = 1
update RecipientesLogs set LoteDesechoID = 3 where RecipienteLogID = 2
update RecipientesLogs set LoteDesechoID = 5 where RecipienteLogID = 3
update RecipientesLogs set LoteDesechoID = 2 where RecipienteLogID = 4
update RecipientesLogs set LoteDesechoID = 4 where RecipienteLogID = 5
update RecipientesLogs set LoteDesechoID = 6 where RecipienteLogID = 6
update RecipientesLogs set LoteDesechoID = 3 where RecipienteLogID = 7
update RecipientesLogs set LoteDesechoID = 7 where RecipienteLogID = 8
update RecipientesLogs set LoteDesechoID = 2 where RecipienteLogID = 9
update RecipientesLogs set LoteDesechoID = 6 where RecipienteLogID = 10
update RecipientesLogs set LoteDesechoID = 1 where RecipienteLogID = 11
update RecipientesLogs set LoteDesechoID = 3 where RecipienteLogID = 12
update RecipientesLogs set LoteDesechoID = 5 where RecipienteLogID = 13
update RecipientesLogs set LoteDesechoID = 2 where RecipienteLogID = 14
update RecipientesLogs set LoteDesechoID = 4 where RecipienteLogID = 15
update RecipientesLogs set LoteDesechoID = 6 where RecipienteLogID = 16
update RecipientesLogs set LoteDesechoID = 3 where RecipienteLogID = 17
update RecipientesLogs set LoteDesechoID = 7 where RecipienteLogID = 18
update RecipientesLogs set LoteDesechoID = 2 where RecipienteLogID = 19
update RecipientesLogs set LoteDesechoID = 6 where RecipienteLogID = 20

update Contratos set InicioVigencia = CONVERT(date, '2022-02-22'), FinalVigencia = CONVERT(date, '2023-02-22'), CostoMensual = 5817239.21400 where ContratoID = 1
update Contratos set InicioVigencia = CONVERT(date, '2022-05-01'), FinalVigencia = CONVERT(date, '2023-03-14'), CostoMensual = 1417635.3500 where ContratoID = 2

update RecipientesLogs set ContratoID = 1 where RecipienteLogID = 1
update RecipientesLogs set ContratoID = 33 where RecipienteLogID = 2
update RecipientesLogs set ContratoID = 5 where RecipienteLogID = 3
update RecipientesLogs set ContratoID = 10 where RecipienteLogID = 4
update RecipientesLogs set ContratoID = 14 where RecipienteLogID = 5
update RecipientesLogs set ContratoID = 28 where RecipienteLogID = 6
update RecipientesLogs set ContratoID = 48 where RecipienteLogID = 7
update RecipientesLogs set ContratoID = 27 where RecipienteLogID = 8
update RecipientesLogs set ContratoID = 32 where RecipienteLogID = 9
update RecipientesLogs set ContratoID = 6 where RecipienteLogID = 10
update RecipientesLogs set ContratoID = 11 where RecipienteLogID = 11
update RecipientesLogs set ContratoID = 43 where RecipienteLogID = 12
update RecipientesLogs set ContratoID = 50 where RecipienteLogID = 13
update RecipientesLogs set ContratoID = 12 where RecipienteLogID = 14
update RecipientesLogs set ContratoID = 41 where RecipienteLogID = 15
update RecipientesLogs set ContratoID = 35 where RecipienteLogID = 16
update RecipientesLogs set ContratoID = 13 where RecipienteLogID = 17
update RecipientesLogs set ContratoID = 7 where RecipienteLogID = 18
update RecipientesLogs set ContratoID = 2 where RecipienteLogID = 19
update RecipientesLogs set ContratoID = 6 where RecipienteLogID = 20

update Productores set IndustriaID = 1 where ProductorID = 1
update Productores set IndustriaID = 1 where ProductorID = 2

update LocalesProductores set ProductorID = 3 where LocalProductorID = 2
update LocalesProductores set ProductorID = 4 where LocalProductorID = 4
update LocalesProductores set ProductorID = 6 where LocalProductorID = 5
update LocalesProductores set ProductorID = 5 where LocalProductorID = 6
update LocalesProductores set ProductorID = 3 where LocalProductorID = 7