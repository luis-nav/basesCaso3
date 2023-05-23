drop type if exists ubicaciones_temp
CREATE TYPE ubicaciones_temp 
   AS TABLE
      (ID int identity(1,1) primary key,
	  UbicacionID int);
GO

drop type if exists locales_productores
CREATE TYPE locales_productores
   AS TABLE
      (ID int identity(1,1) primary key,
	  LocalProductorID int);
GO

drop type if exists ciclos
CREATE TYPE ciclos
   AS TABLE
      (ID int identity(1,1) primary key,
	  CicloDeRecoleccionID int,
	  Inicio datetime2(7));
GO

drop type if exists volumenes
CREATE TYPE volumenes
   AS TABLE
      (ID int identity(1,1) primary key,
	  VolumenRecoleccionID int,
	  Volumen decimal(18,5),
	  UnidadDeMedidaID int,
	  ResiduoID int);
GO

drop type if exists CicloEnFecha
CREATE TYPE CicloEnFecha
   AS TABLE
      (ID int identity(1,1) primary key,
	  CicloDeRecoleccionID int);
GO

drop type if exists residuosXProductor
CREATE TYPE residuos
   AS TABLE
      (ID int identity(1,1) primary key,
	  Volumen decimal(18,5),
	  Unidad varchar(30),
	  Tipo varchar(30));
GO

CREATE PROCEDURE [dbo].[SP_RetornarResiduos]
	@NombreProductor nchar(50),
	@NombreRegion nchar(40),
	@Fecha datetime2(7)
AS 
BEGIN
	
	SET NOCOUNT ON
	
	declare @pID int
	declare @rID int
	declare @uID ubicaciones_temp
	declare @lpID locales_productores
	declare @Temp int
	declare @maxID int
	declare @ubiID int
	declare @localTemp int

	select @pID = ProductorID from Productores where Nombre = 'KFC'	

	select @rID = RegionID from Regiones where Nombre = 'San Jose Oeste'	

	insert into @uID select UbicacionID from Ubicaciones where RegionID = @rID

	set @Temp = 1

	select @maxID = MAX(ID) from @uID

	while (@Temp <= @maxID)
	begin
	select @ubiID = UbicacionID from @uID where ID = @Temp
	insert into @lpID select LocalProductorID from LocalesProductores where ProductorID = @pID and UbicacionID = @ubiID
	set @Temp = @Temp + 1
	end

	select * from @lpID

	select @maxID = MAX(ID) from @lpID
	set @Temp = 1

	while (@Temp <= @maxID)
	begin
	select @localTemp = LocalProductorID from @lpID where ID = @Temp
	exec SP_RetornarCiclosDeLocal @localTemp, @Fecha
	set @Temp = @Temp + 1
	end

END
RETURN 0
GO

CREATE PROCEDURE [dbo].[SP_RetornarCiclosDeLocal]
	@LocalProductorID  int,
	@Fecha datetime2(7)
AS 
BEGIN
	
	SET NOCOUNT ON
	
	declare @cID ciclos

	insert into @cID select CicloDeRecoleccionID, Inicio from CiclosDeRecoleccion where LocalProductorID = @LocalProductorID
	-- select * from @cID

	exec SP_ValidarDiaDeRecoleccion @Fecha, @cID
END
RETURN 0
GO

CREATE PROCEDURE [dbo].[SP_ValidarDiaDeRecoleccion]
	@Fecha datetime2(7),
	@cID ciclos readonly
AS 
BEGIN
	
	SET NOCOUNT ON

	declare @maxID int
	declare @Temp int
	declare @dateTemp datetime2(7)
	declare @idTemp int
	declare @ciclosEnFecha CicloEnFecha
	declare @cicloTemp int

	select @maxID = MAX(ID) from @cID
	set @Temp = 1

	while (@Temp <= @maxID)
	begin
	select @dateTemp = Inicio, @idTemp = CicloDeRecoleccionID from @cID where ID = @Temp
	if datediff (day, CONVERT(datetime2(7), @dateTemp), @Fecha)%7 = 0 
	insert into @ciclosEnFecha select CicloDeRecoleccionID from @cID where CicloDeRecoleccionID = @idTemp
	set @Temp = @Temp + 1
	end

	-- select * from @ciclosEnFecha

	select @maxID = MAX(ID) from @ciclosEnFecha
	set @Temp = 1

	while (@Temp <= @maxID)
	begin
	select @cicloTemp = CicloDeRecoleccionID from @ciclosEnFecha where ID = @Temp
	exec SP_RetornarVolumenesXCiclo @cicloTemp
	set @Temp = @Temp + 1
	end

END
RETURN 0
GO

CREATE PROCEDURE [dbo].[SP_RetornarVolumenesXCiclo]
	@cID int
AS 
BEGIN
	
	SET NOCOUNT ON

	declare @vID volumenes
	declare @maxID int
	declare @Temp int

	insert into @vID select VolumenRecoleccionID, Volumen, UnidadDeMedidaID, ResiduoID from VolumenesRecoleccion where CicloDeRecoleccionID = @cID
	
	select @maxID = MAX(ID) from @vID
	set @Temp = 1

	while (@Temp <= @maxID)
	begin
	insert into 	
	set @Temp = @Temp + 1
	end

END
RETURN 0
GO


exec SP_RetornarResiduos 'KFC', 'San Jose Oeste', '2023-05-24'

select * from Productores
select * from LocalesProductores
select * from Locales
select * from Regiones
select * from Ubicaciones
select * from CiclosDeRecoleccion
select * from LocalesProductoresXContratos
select * from VolumenesRecoleccion
select * from UnidadesDeMedidas
select * from Residuos
select * from TiposResiduos

drop type if exists tablaTemp
CREATE TYPE tablaTemp
   AS TABLE
      (ID int);
GO


declare @tmp2 ubicaciones_temp

insert into @tmp2 select UbicacionID from Ubicaciones as u inner join Regiones as r on u.RegionID = r.RegionID where r.Nombre = 'San Jose Oeste'
select * from @tmp2

declare @lpID locales_productores
declare @Temp int
declare @maxID int
declare @ubiID int
set @Temp = 1

	select @maxID = MAX(ID) from @tmp2

	while (@Temp <= @maxID)
	begin
	select @ubiID = UbicacionID from @tmp2 where ID = @Temp
	select LocalProductorID from LocalesProductores as lp inner join Productores as p on lp.ProductorID = p.ProductorID
inner join Ubicaciones as u on lp.UbicacionID = u.UbicacionID where lp.UbicacionID = 3 and p.Nombre = 'KFC'
	set @Temp = @Temp + 1
	end

	select * from @lpID

select LocalProductorID from LocalesProductores as lp inner join Productores as p on lp.ProductorID = p.ProductorID
inner join Ubicaciones as u on lp.UbicacionID = u.UbicacionID where lp.UbicacionID = 3 and p.Nombre = 'KFC'



select LocalProductorID from LocalesProductores as lp inner join Ubicaciones as u on lp.UbicacionID = u.UbicacionID where lp.UbicacionID = 3
select v.Volumen, r.Nombre, r.TipoResiduoID, r.UnidadDeMedidaID from VolumenesRecoleccion as v inner join Residuos as r on v.ResiduoID = r.ResiduoID where r.ResiduoID = 2

select Tipo from Residuos as r inner join TiposResiduos as tr on r.TipoResiduoID = tr.TipoResiduoID where r.TipoResiduoID = 2
select Unidad from Residuos as r inner join UnidadesDeMedidas as um on r.UnidadDeMedidaID = um.UnidadDeMedidaID where r.UnidadDeMedidaID = 1