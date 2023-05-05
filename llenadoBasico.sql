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
insert into Residuos (Nombre, TipoResiduoID, UnidadDeMedidaID) values 
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
(1, CONVERT(datetime2(7), '2023-01-01 00:00:01'), CONVERT(datetime2(7), '2023-12-31 23:59:59'), 1, 532.5, '192.167.0.11', 'Luis', CHECKSUM(1, CONVERT(datetime2(7), '2023-01-01 00:00:01'), CONVERT(datetime2(7), '2023-12-31 23:59:59'), 1, 532.5, '192.167.0.11', 'Luis'));

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

insert into Productores values (1, 'BK')
insert into Productores values (2, 'Papa')
insert into Productores values (3, 'Walmart')
insert into Productores values (4, 'Pali')

insert into Ciudades values ('San Pedro', 1)
insert into Ciudades values ('Escazu', 1)
insert into Ciudades values ('Tibas', 1)

insert into EmpresasRecolectoras values ('Municipalidad', 1)
insert into EmpresasRecolectoras values ('Hoja Verde', 2)
insert into EmpresasRecolectoras values ('Ciudad Limpia', 3)

insert into ActoresXContrato values (1, 2)
insert into ActoresXContrato values (2, 1)
insert into ActoresXContrato values (3, 2)