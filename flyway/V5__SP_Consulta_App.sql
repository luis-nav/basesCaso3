-- drop type if exists ubicaciones_temp
CREATE TYPE ubicaciones_temp 
   AS TABLE
      (ID int identity(1,1) primary key,
	  UbicacionID int);
GO

-- drop type if exists locales_productores
CREATE TYPE locales_productores
   AS TABLE
      (ID int identity(1,1) primary key,
	  LocalProductorID int);
GO

-- drop type if exists ciclos
CREATE TYPE ciclos
   AS TABLE
      (ID int identity(1,1) primary key,
	  CicloDeRecoleccionID int,
	  Inicio datetime2(7),
	  Frecuencia int);
GO

-- drop type if exists volumenes
CREATE TYPE volumenes
   AS TABLE
      (ID int identity(1,1) primary key,
	  VolumenRecoleccionID int,
	  Volumen decimal(18,5),
	  UnidadDeMedidaID int,
	  ResiduoID int);
GO

-- drop type if exists CicloEnFecha
CREATE TYPE CicloEnFecha
   AS TABLE
      (ID int identity(1,1) primary key,
	  CicloDeRecoleccionID int);
GO

-- drop type if exists residuosXProductor
CREATE TYPE residuosXProductor
   AS TABLE
      (ID int identity(1,1) primary key,
	  Volumen decimal(18,5),
	  Nombre varchar(30),
	  Tipo varchar(30),
	  Unidad varchar(30));
GO


 --drop proc SP_RetornarResiduos
CREATE PROCEDURE [dbo].[SP_RetornarResiduos]
	@NombreProductor nchar(50),
	@NombreRegion nchar(40),
	@Fecha datetime2(7)
AS 
BEGIN
	
	SET NOCOUNT ON
	
	declare @tmp ubicaciones_temp
	declare @lpID locales_productores
	declare @Temp int
	declare @maxID int
	declare @ubiID int
	declare @localTemp int

	insert into @tmp select UbicacionID from Ubicaciones as u inner join Regiones as r on u.RegionID = r.RegionID where r.Nombre = @NombreRegion

	set @Temp = 1
	select @maxID = MAX(ID) from @tmp

	while (@Temp <= @maxID)
	begin
		select @ubiID = UbicacionID from @tmp where ID = @Temp
		insert into @lpID select LocalProductorID from LocalesProductores as lp inner join Productores as p on lp.ProductorID = p.ProductorID
		inner join Ubicaciones as u on lp.UbicacionID = u.UbicacionID where lp.UbicacionID = @ubiID and p.Nombre = @NombreProductor
		set @Temp = @Temp + 1
	end

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


 --drop proc SP_RetornarCiclosDeLocal
CREATE PROCEDURE [dbo].[SP_RetornarCiclosDeLocal]
	@LocalProductorID  int,
	@Fecha datetime2(7)
AS 
BEGIN
	
	SET NOCOUNT ON
	
	declare @cID ciclos

	insert into @cID select CicloDeRecoleccionID, Inicio, Frecuencia from CiclosDeRecoleccion where LocalProductorID = @LocalProductorID

	exec SP_ValidarDiaDeRecoleccion @Fecha, @cID
END
RETURN 0
GO


 --drop proc SP_ValidarDiaDeRecoleccion
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
	declare @frecuenciaTemp int

	select @maxID = MAX(ID) from @cID
	set @Temp = 1

	while (@Temp <= @maxID)
	begin
	select @dateTemp = Inicio, @idTemp = CicloDeRecoleccionID, @frecuenciaTemp = Frecuencia from @cID where ID = @Temp
	if datediff (day, CONVERT(datetime2(7), @dateTemp), @Fecha)%@frecuenciaTemp = 0 
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


 --drop proc SP_RetornarVolumenesXCiclo
CREATE PROCEDURE [dbo].[SP_RetornarVolumenesXCiclo]
	@cID int
AS 
BEGIN
	
	SET NOCOUNT ON

	declare @r residuosXProductor
	declare @maxID int
	declare @Temp int

	insert into @r select v.Volumen, r.Nombre, Tipo, Unidad from VolumenesRecoleccion as v inner join Residuos as r on v.ResiduoID = r.ResiduoID
	inner join TiposResiduos as tr on r.TipoResiduoID = tr.TipoResiduoID
	inner join UnidadesDeMedidas as um on r.UnidadDeMedidaID = um.UnidadDeMedidaID 
	where v.CicloDeRecoleccionID = @cID

	select * from @r
END
RETURN 0
GO

-- use esencialVerde
-- exec SP_RetornarResiduos 'KFC', 'San Jose Oeste', '2023-05-24'