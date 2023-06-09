USE [master]
GO
/****** Object:  Database [esencialVerde]    Script Date: 6/7/2023 5:08:15 PM ******/
CREATE DATABASE [esencialVerde]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'esencialVerde', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\esencialVerde.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'esencialVerde_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\esencialVerde_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [esencialVerde] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [esencialVerde].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [esencialVerde] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [esencialVerde] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [esencialVerde] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [esencialVerde] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [esencialVerde] SET ARITHABORT OFF 
GO
ALTER DATABASE [esencialVerde] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [esencialVerde] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [esencialVerde] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [esencialVerde] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [esencialVerde] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [esencialVerde] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [esencialVerde] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [esencialVerde] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [esencialVerde] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [esencialVerde] SET  DISABLE_BROKER 
GO
ALTER DATABASE [esencialVerde] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [esencialVerde] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [esencialVerde] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [esencialVerde] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [esencialVerde] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [esencialVerde] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [esencialVerde] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [esencialVerde] SET RECOVERY FULL 
GO
ALTER DATABASE [esencialVerde] SET  MULTI_USER 
GO
ALTER DATABASE [esencialVerde] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [esencialVerde] SET DB_CHAINING OFF 
GO
ALTER DATABASE [esencialVerde] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [esencialVerde] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [esencialVerde] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [esencialVerde] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'esencialVerde', N'ON'
GO
ALTER DATABASE [esencialVerde] SET QUERY_STORE = ON
GO
ALTER DATABASE [esencialVerde] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [esencialVerde]
GO

/****** Object:  UserDefinedTableType [dbo].[CicloEnFecha]    Script Date: 6/7/2023 5:08:15 PM ******/
CREATE TYPE [dbo].[CicloEnFecha] AS TABLE(
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CicloDeRecoleccionID] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  UserDefinedTableType [dbo].[ciclos]    Script Date: 6/7/2023 5:08:15 PM ******/
CREATE TYPE [dbo].[ciclos] AS TABLE(
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CicloDeRecoleccionID] [int] NULL,
	[Inicio] [datetime2](7) NULL,
	PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  UserDefinedTableType [dbo].[locales_productores]    Script Date: 6/7/2023 5:08:15 PM ******/
CREATE TYPE [dbo].[locales_productores] AS TABLE(
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LocalProductorID] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  UserDefinedTableType [dbo].[NuevoContrato]    Script Date: 6/7/2023 5:08:15 PM ******/
CREATE TYPE [dbo].[NuevoContrato] AS TABLE(
	[InicioVigencia] [date] NULL,
	[FinalVigencia] [date] NULL,
	[ProductorID] [int] NULL,
	[CostoMensual] [decimal](18, 5) NULL,
	[MonedaID] [int] NULL,
	[TipoDeCambioID] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[residuos]    Script Date: 6/7/2023 5:08:15 PM ******/
CREATE TYPE [dbo].[residuos] AS TABLE(
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Volumen] [decimal](18, 5) NULL,
	[Unidad] [varchar](30) NULL,
	[Tipo] [varchar](30) NULL,
	PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  UserDefinedTableType [dbo].[TCurrencyData]    Script Date: 6/7/2023 5:08:15 PM ******/
CREATE TYPE [dbo].[TCurrencyData] AS TABLE(
	[Nombre] [varchar](30) NULL,
	[Acronimo] [varchar](4) NULL,
	[Simbolo] [nchar](5) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[ubicaciones_temp]    Script Date: 6/7/2023 5:08:15 PM ******/
CREATE TYPE [dbo].[ubicaciones_temp] AS TABLE(
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UbicacionID] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  UserDefinedTableType [dbo].[volumenes]    Script Date: 6/7/2023 5:08:15 PM ******/
CREATE TYPE [dbo].[volumenes] AS TABLE(
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[VolumenRecoleccionID] [int] NULL,
	[Volumen] [decimal](18, 5) NULL,
	[UnidadDeMedidaID] [int] NULL,
	[ResiduoID] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  Table [dbo].[TiposRecipientes]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposRecipientes](
	[TipoRecipienteID] [int] IDENTITY(1,1) NOT NULL,
	[TipoResiduoID] [int] NOT NULL,
	[Capacidad] [decimal](18, 5) NOT NULL,
	[UnidadDeMedidaID] [smallint] NOT NULL,
	[BrandRecipienteID] [int] NOT NULL,
 CONSTRAINT [PK_Recipientes] PRIMARY KEY CLUSTERED 
(
	[TipoRecipienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UnidadesDeMedidas]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnidadesDeMedidas](
	[UnidadDeMedidaID] [smallint] IDENTITY(1,1) NOT NULL,
	[Unidad] [varchar](30) NOT NULL,
 CONSTRAINT [PK_UnidadesDeMedidas] PRIMARY KEY CLUSTERED 
(
	[UnidadDeMedidaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contratos]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contratos](
	[ContratoID] [int] IDENTITY(1,1) NOT NULL,
	[InicioVigencia] [date] NOT NULL,
	[FinalVigencia] [date] NOT NULL,
	[ProductorID] [int] NULL,
	[CostoMensual] [decimal](18, 5) NOT NULL,
	[MonedaID] [int] NOT NULL,
	[TipoDeCambioID] [bigint] NULL,
	[EmpresaRecolectoraID] [int] NULL,
 CONSTRAINT [PK_Contratos] PRIMARY KEY CLUSTERED 
(
	[ContratoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccionesRecipientes]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccionesRecipientes](
	[AccionRecipienteID] [smallint] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_AccionesRecipientes] PRIMARY KEY CLUSTERED 
(
	[AccionRecipienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecipientesLogs]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecipientesLogs](
	[RecipienteLogID] [bigint] IDENTITY(1,1) NOT NULL,
	[Hora] [datetime2](7) NOT NULL,
	[TipoRecipienteID] [int] NOT NULL,
	[IPAddress] [varchar](20) NOT NULL,
	[Username] [varchar](45) NOT NULL,
	[Checksum] [varbinary](150) NOT NULL,
	[LocalID] [int] NOT NULL,
	[AccionRecipienteID] [smallint] NOT NULL,
	[CantidadRecipientes] [int] NOT NULL,
	[ResiduoID] [int] NULL,
	[CamionID] [int] NULL,
	[EntregadoPor] [nchar](40) NULL,
	[ContratoID] [int] NULL,
	[LoteDesechoID] [bigint] NULL,
	[EmpresaRecolectoraID] [int] NULL,
 CONSTRAINT [PK_EstadosRecipientesLogs] PRIMARY KEY CLUSTERED 
(
	[RecipienteLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Residuos]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Residuos](
	[ResiduoID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[TipoResiduoID] [int] NOT NULL,
	[UnidadDeMedidaID] [smallint] NOT NULL,
 CONSTRAINT [PK_Residuos] PRIMARY KEY CLUSTERED 
(
	[ResiduoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productores]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productores](
	[ProductorID] [int] IDENTITY(1,1) NOT NULL,
	[ActorID] [int] NULL,
	[Nombre] [nchar](50) NOT NULL,
	[IndustriaID] [int] NULL,
 CONSTRAINT [PK_Productores] PRIMARY KEY CLUSTERED 
(
	[ProductorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BrandsRecipientes]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BrandsRecipientes](
	[BrandRecipienteID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](45) NOT NULL,
 CONSTRAINT [PK_BrandsRecipientes] PRIMARY KEY CLUSTERED 
(
	[BrandRecipienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[EVV_RECIP_LOGS_LAST_MONTH]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[EVV_RECIP_LOGS_LAST_MONTH]   AS
SELECT RL.Hora, RL.LocalID as Local_Escencial_Verde, Prods.Nombre,  BR.Nombre as Marca, AR.Descripcion as Accion, R.Nombre as Residuo, RL.CantidadRecipientes * TR.Capacidad as Cantidad, UM.Unidad as Unidad
FROM [dbo].RecipientesLogs RL
INNER JOIN [dbo].AccionesRecipientes AR on RL.AccionRecipienteID = AR.AccionRecipienteID
INNER JOIN [dbo].Residuos R on R.ResiduoID = RL.ResiduoID
INNER JOIN [dbo].TiposRecipientes TR on TR.TipoRecipienteID = RL.TipoRecipienteID
INNER JOIN [dbo].BrandsRecipientes BR on TR.BrandRecipienteID = BR.BrandRecipienteID
INNER JOIN [dbo].UnidadesDeMedidas UM on TR.UnidadDeMedidaID = UM.UnidadDeMedidaID
INNER JOIN [dbo].Contratos Con on Con.ContratoID = RL.ContratoID
INNER JOIN [dbo].Productores Prods on Con.ProductorID = Prods.ProductorID
WHERE RL.Hora BETWEEN DATEADD(MONTH, -1, SYSUTCDATETIME()) AND SYSUTCDATETIME();
GO
/****** Object:  View [dbo].[USO_DE_BRANDS]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[USO_DE_BRANDS] AS
SELECT
Res.Nombre AS Residuo,
Brand.Nombre AS Brand_Name, 
COUNT(Rlog.AccionRecipienteID) AS Veces_Recogidos, 
Trec.Capacidad * SUM(Rlog.CantidadRecipientes) AS  Capacidad_Utilizada,
Unidad.Unidad AS Unidad
FROM RecipientesLogs Rlog
LEFT JOIN TiposRecipientes Trec on Rlog.TipoRecipienteID = Trec.TipoRecipienteID
LEFT JOIN BrandsRecipientes Brand on Brand.BrandRecipienteID = Trec.BrandRecipienteID
INNER JOIN Residuos Res on Res.ResiduoID = Rlog.ResiduoID
LEFT JOIN UnidadesDeMedidas Unidad on Unidad.UnidadDeMedidaID = Res.UnidadDeMedidaID
WHERE Rlog.AccionRecipienteID = 3
GROUP BY Res.Nombre, Brand.Nombre, Trec.Capacidad, Unidad.Unidad;
GO
/****** Object:  Table [dbo].[AccionesInventarios]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccionesInventarios](
	[AccionInventarioID] [smallint] NOT NULL,
	[Descripcion] [varchar](45) NOT NULL,
 CONSTRAINT [PK_AccionesInventarios] PRIMARY KEY CLUSTERED 
(
	[AccionInventarioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Actores]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actores](
	[ActorID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](35) NOT NULL,
 CONSTRAINT [PK_Actores] PRIMARY KEY CLUSTERED 
(
	[ActorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActoresXContrato]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActoresXContrato](
	[ActorXContratoID] [int] IDENTITY(1,1) NOT NULL,
	[ActorID] [int] NOT NULL,
	[ContratoID] [int] NOT NULL,
 CONSTRAINT [PK_ActoresXContrato] PRIMARY KEY CLUSTERED 
(
	[ActorXContratoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AperturasCajas]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AperturasCajas](
	[AperturaCajaID] [bigint] IDENTITY(1,1) NOT NULL,
	[Monto] [decimal](18, 5) NOT NULL,
	[TipoDeCambioID] [bigint] NULL,
	[MonedaID] [int] NOT NULL,
	[PostTime] [datetime2](7) NOT NULL,
	[IPAddress] [varchar](20) NOT NULL,
	[Username] [varchar](45) NOT NULL,
	[Checksum] [varbinary](150) NOT NULL,
	[LocalID] [int] NOT NULL,
 CONSTRAINT [PK_AperturasCajas] PRIMARY KEY CLUSTERED 
(
	[AperturaCajaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BalancesLogs]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BalancesLogs](
	[BalanceLogID] [bigint] IDENTITY(1,1) NOT NULL,
	[MonedaID] [int] NOT NULL,
	[MontoTotal] [decimal](18, 2) NOT NULL,
	[MontoAñadido] [decimal](18, 2) NOT NULL,
	[PostTime] [datetime2](7) NOT NULL,
	[IPAddress] [varchar](20) NOT NULL,
	[Username] [varchar](40) NOT NULL,
	[Cheksum] [varbinary](150) NOT NULL,
	[TipoDeCambioID] [bigint] NOT NULL,
	[ProductorID] [int] NOT NULL,
	[InvoiceID] [bigint] NULL,
	[TransaccionID] [bigint] NULL,
 CONSTRAINT [PK_BalancesLogs] PRIMARY KEY CLUSTERED 
(
	[BalanceLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CalidadesRecipientes]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalidadesRecipientes](
	[CalidadRecipienteID] [smallint] IDENTITY(1,1) NOT NULL,
	[Calidad] [varchar](25) NOT NULL,
 CONSTRAINT [PK_CalidadesRecipientes] PRIMARY KEY CLUSTERED 
(
	[CalidadRecipienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CalidadesRecipientesLogs]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalidadesRecipientesLogs](
	[CalidadRecipienteLogID] [bigint] IDENTITY(1,1) NOT NULL,
	[Hora] [datetime2](7) NOT NULL,
	[RecipienteID] [int] NOT NULL,
	[CalidadRecipienteID] [smallint] NOT NULL,
	[IPAddress] [varchar](20) NOT NULL,
	[Username] [varchar](45) NOT NULL,
	[Checksum] [varbinary](150) NOT NULL,
 CONSTRAINT [PK_CalidadesRecipientesLogs] PRIMARY KEY CLUSTERED 
(
	[CalidadRecipienteLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Camiones]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Camiones](
	[CamionID] [int] IDENTITY(1,1) NOT NULL,
	[Placa] [nchar](10) NOT NULL,
	[LocalID] [int] NOT NULL,
 CONSTRAINT [PK_Camiones] PRIMARY KEY CLUSTERED 
(
	[CamionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CiclosDeRecoleccion]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CiclosDeRecoleccion](
	[CicloDeRecoleccionID] [int] IDENTITY(1,1) NOT NULL,
	[Inicio] [datetime2](7) NOT NULL,
	[Frecuencia] [int] NOT NULL,
	[ContratoID] [int] NOT NULL,
	[LocalProductorID] [bigint] NULL,
	[LocalProductorXContratoID] [bigint] NULL,
	[EmpresaRecolectoraID] [int] NULL,
 CONSTRAINT [PK_CiclosDeRecoleccion] PRIMARY KEY CLUSTERED 
(
	[CicloDeRecoleccionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CierresCajas]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CierresCajas](
	[CierreCajaID] [bigint] IDENTITY(1,1) NOT NULL,
	[AperturaCajaID] [bigint] NOT NULL,
	[Monto] [decimal](18, 5) NOT NULL,
	[LocalID] [int] NOT NULL,
	[IPAddress] [varchar](20) NOT NULL,
	[Username] [varchar](45) NOT NULL,
	[Checksum] [varbinary](150) NOT NULL,
 CONSTRAINT [PK_CierresCajas] PRIMARY KEY CLUSTERED 
(
	[CierreCajaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudades]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudades](
	[CiudadID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](40) NOT NULL,
	[EstadoID] [int] NOT NULL,
 CONSTRAINT [PK_Ciudades] PRIMARY KEY CLUSTERED 
(
	[CiudadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactosXEmpresasRecolectoras]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactosXEmpresasRecolectoras](
	[ContactoXEmpresaRecolectoraID] [bigint] IDENTITY(1,1) NOT NULL,
	[ValorContactoID] [bigint] NOT NULL,
	[EmpresaRecolectoraID] [int] NULL,
 CONSTRAINT [PK_ContactosXEmpresasRecolectoras] PRIMARY KEY CLUSTERED 
(
	[ContactoXEmpresaRecolectoraID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactosXLocales]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactosXLocales](
	[ContactoXLocalID] [bigint] IDENTITY(1,1) NOT NULL,
	[ValorContactoID] [bigint] NOT NULL,
	[LocalID] [int] NULL,
 CONSTRAINT [PK_ContactosXLocales] PRIMARY KEY CLUSTERED 
(
	[ContactoXLocalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactosXLocalesProductores]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactosXLocalesProductores](
	[ContactoXLocalProductorID] [bigint] IDENTITY(1,1) NOT NULL,
	[ValorContactoID] [bigint] NOT NULL,
	[LocalProductorID] [bigint] NOT NULL,
 CONSTRAINT [PK_ContactosXLocalesProductores] PRIMARY KEY CLUSTERED 
(
	[ContactoXLocalProductorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactosXProductores]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactosXProductores](
	[ConctactoXProductorID] [bigint] IDENTITY(1,1) NOT NULL,
	[ValorContactoID] [bigint] NOT NULL,
	[ProductorID] [int] NOT NULL,
 CONSTRAINT [PK_ContactosXProductores] PRIMARY KEY CLUSTERED 
(
	[ConctactoXProductorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConversionesDeMedidas]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConversionesDeMedidas](
	[ConversionDeMedidaID] [int] IDENTITY(1,1) NOT NULL,
	[PrimeraUnidad] [smallint] NOT NULL,
	[SegundaUnidad] [smallint] NOT NULL,
	[ProporcionPrimera] [decimal](18, 5) NOT NULL,
	[ProporcionSegunda] [decimal](18, 5) NOT NULL,
 CONSTRAINT [PK_ConversionesDeMedidas] PRIMARY KEY CLUSTERED 
(
	[ConversionDeMedidaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CostosProcesosXPaises]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostosProcesosXPaises](
	[CostoProcesoXPaisID] [int] IDENTITY(1,1) NOT NULL,
	[Tarifa] [decimal](18, 5) NOT NULL,
	[EstadoID] [int] NULL,
	[PaisID] [int] NOT NULL,
	[MonedaID] [int] NOT NULL,
	[InicioVigencia] [datetime2](7) NOT NULL,
	[FinalVigencia] [datetime2](7) NOT NULL,
	[Default] [bit] NOT NULL,
	[IPAddress] [varchar](20) NOT NULL,
	[Username] [varchar](45) NOT NULL,
	[Checksum] [varbinary](150) NOT NULL,
	[ProcesoResiduoID] [int] NOT NULL,
 CONSTRAINT [PK_CostosProcesosXPaises] PRIMARY KEY CLUSTERED 
(
	[CostoProcesoXPaisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Culturas]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Culturas](
	[CulturaID] [smallint] IDENTITY(1,1) NOT NULL,
	[IdiomaID] [smallint] NOT NULL,
	[PaisID] [int] NULL,
	[Default] [bit] NOT NULL,
 CONSTRAINT [PK_Culturas] PRIMARY KEY CLUSTERED 
(
	[CulturaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpresasRecolectoras]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpresasRecolectoras](
	[EmpresaRecolectoraID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](25) NOT NULL,
	[ActorID] [int] NULL,
 CONSTRAINT [PK_EmpresasRecolectoras] PRIMARY KEY CLUSTERED 
(
	[EmpresaRecolectoraID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estados](
	[EstadoID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](40) NOT NULL,
	[PaisID] [int] NOT NULL,
 CONSTRAINT [PK_Estados] PRIMARY KEY CLUSTERED 
(
	[EstadoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadosContratos]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadosContratos](
	[EstadoContratoID] [smallint] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](20) NOT NULL,
 CONSTRAINT [PK_EstadosContratos] PRIMARY KEY CLUSTERED 
(
	[EstadoContratoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadosContratosLogs]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadosContratosLogs](
	[EstadoContratoLogID] [bigint] IDENTITY(1,1) NOT NULL,
	[EstadoContratoID] [smallint] NOT NULL,
	[ContratoID] [int] NOT NULL,
	[IPAddress] [varchar](20) NOT NULL,
	[Username] [varchar](45) NOT NULL,
	[Checksum] [varbinary](150) NOT NULL,
 CONSTRAINT [PK_EstadosContratosLogs] PRIMARY KEY CLUSTERED 
(
	[EstadoContratoLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventsLogs]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventsLogs](
	[EventLogID] [bigint] IDENTITY(1,1) NOT NULL,
	[PostTime] [datetime2](7) NOT NULL,
	[IPAddress] [varchar](20) NOT NULL,
	[Username] [varchar](45) NOT NULL,
	[Checksum] [varbinary](150) NOT NULL,
	[Descripcion] [varchar](80) NOT NULL,
	[ReferenceID1] [bigint] NOT NULL,
	[ReferenceID2] [bigint] NULL,
	[Value1] [varchar](60) NOT NULL,
	[Value2] [varchar](60) NULL,
	[LevelID] [int] NULL,
	[SourceID] [int] NULL,
	[TipoEventoID] [int] NULL,
	[TipoObjetoID] [int] NULL,
 CONSTRAINT [PK_EventsLogs] PRIMARY KEY CLUSTERED 
(
	[EventLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Idiomas]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Idiomas](
	[IdiomaID] [smallint] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](20) NULL,
 CONSTRAINT [PK_Idiomas] PRIMARY KEY CLUSTERED 
(
	[IdiomaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Industrias]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Industrias](
	[IndustriaID] [int] IDENTITY(1,1) NOT NULL,
	[Industria] [nchar](40) NOT NULL,
 CONSTRAINT [PK_Industrias] PRIMARY KEY CLUSTERED 
(
	[IndustriaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryLogs]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryLogs](
	[InventoryLogID] [bigint] NOT NULL,
	[PostTime] [datetime2](7) NOT NULL,
	[AccionInventarioID] [smallint] NOT NULL,
	[ProductoID] [int] NOT NULL,
	[LocalID] [int] NOT NULL,
	[ProcesoResiduoLogID] [bigint] NULL,
	[Cantidad] [int] IDENTITY(1,1) NOT NULL,
	[IPAddress] [varchar](20) NOT NULL,
	[Username] [varchar](45) NOT NULL,
	[Checksum] [varbinary](150) NOT NULL,
 CONSTRAINT [PK_InventoryLogs] PRIMARY KEY CLUSTERED 
(
	[InventoryLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[InvoiceID] [bigint] IDENTITY(1,1) NOT NULL,
	[MonedaID] [int] NOT NULL,
	[Monto] [decimal](18, 2) NOT NULL,
	[PostTime] [datetime2](7) NOT NULL,
	[IPAddress] [varchar](20) NOT NULL,
	[Username] [varchar](45) NOT NULL,
	[Checksum] [varbinary](150) NOT NULL,
	[ProductorID] [int] NOT NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[InvoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Levels]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Levels](
	[LevelID] [int] NOT NULL,
	[Descripcion] [varchar](45) NOT NULL,
 CONSTRAINT [PK_Levels] PRIMARY KEY CLUSTERED 
(
	[LevelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locales]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locales](
	[LocalID] [int] IDENTITY(1,1) NOT NULL,
	[UbicacionID] [int] NOT NULL,
	[ActorID] [int] NULL,
	[RegionID] [int] NOT NULL,
 CONSTRAINT [PK_Locales] PRIMARY KEY CLUSTERED 
(
	[LocalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocalesProductores]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocalesProductores](
	[LocalProductorID] [bigint] IDENTITY(1,1) NOT NULL,
	[UbicacionID] [int] NOT NULL,
	[ProductorID] [int] NOT NULL,
	[ActorID] [int] NULL,
 CONSTRAINT [PK_LocalesProductores] PRIMARY KEY CLUSTERED 
(
	[LocalProductorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocalesProductoresXContratos]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocalesProductoresXContratos](
	[LocalProductorXContratoID] [bigint] IDENTITY(1,1) NOT NULL,
	[ContratoID] [int] NOT NULL,
	[LocalProductorID] [bigint] NOT NULL,
	[Detalles] [varchar](100) NULL,
 CONSTRAINT [PK_LocalesProductoresXContratos] PRIMARY KEY CLUSTERED 
(
	[LocalProductorXContratoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LotesDesechos]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LotesDesechos](
	[LoteDesechoID] [bigint] IDENTITY(1,1) NOT NULL,
	[LocalID] [int] NOT NULL,
	[ResiduoID] [int] NOT NULL,
	[HoraApertura] [datetime2](7) NOT NULL,
	[IPAddress] [varchar](20) NOT NULL,
	[Username] [varchar](45) NOT NULL,
	[Checksum] [varbinary](150) NOT NULL,
 CONSTRAINT [PK_LotesDesechos] PRIMARY KEY CLUSTERED 
(
	[LoteDesechoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Monedas]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Monedas](
	[MonedaID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Acronimo] [nchar](5) NOT NULL,
	[MonedaBase] [bit] NOT NULL,
	[Simbolo] [nchar](5) NULL,
 CONSTRAINT [PK_Monedas] PRIMARY KEY CLUSTERED 
(
	[MonedaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PagosDeudasAmbientales]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PagosDeudasAmbientales](
	[PagoDeudaAmbientalID] [int] IDENTITY(1,1) NOT NULL,
	[ProductorID] [int] NOT NULL,
	[Monto] [decimal](18, 5) NOT NULL,
	[MonedaID] [int] NOT NULL,
	[ContratoID] [int] NOT NULL,
	[ProductorAyudadoID] [int] NOT NULL,
 CONSTRAINT [PK_PagosDeudasAmbientales] PRIMARY KEY CLUSTERED 
(
	[PagoDeudaAmbientalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paises](
	[PaisID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](40) NOT NULL,
	[MonedaID] [int] NULL,
	[Acronimo] [nchar](8) NOT NULL,
 CONSTRAINT [PK_Paises] PRIMARY KEY CLUSTERED 
(
	[PaisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[PaymentID] [bigint] IDENTITY(1,1) NOT NULL,
	[MonedaID] [int] NOT NULL,
	[Monto] [decimal](18, 2) NOT NULL,
	[PostTime] [datetime2](7) NOT NULL,
	[IPAddress] [varchar](20) NOT NULL,
	[Username] [varchar](45) NOT NULL,
	[Checksum] [varbinary](150) NOT NULL,
	[InvoiceID] [bigint] NOT NULL,
	[ProductorID] [int] NOT NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PorcentajesActoresXContratos]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PorcentajesActoresXContratos](
	[PorcentajeActoresXContratosID] [bigint] IDENTITY(1,1) NOT NULL,
	[Porcentaje] [decimal](18, 5) NOT NULL,
	[InicioVIgencia] [datetime2](7) NOT NULL,
	[FinalVigencia] [datetime2](7) NULL,
	[default] [bit] NOT NULL,
	[IPAddress] [varchar](20) NOT NULL,
	[Username] [varchar](40) NOT NULL,
	[Checksum] [varbinary](150) NOT NULL,
	[ActoresXContratoID] [int] NOT NULL,
 CONSTRAINT [PK_PorcentajesActoresXContratos] PRIMARY KEY CLUSTERED 
(
	[PorcentajeActoresXContratosID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreciosProductosXPaises]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreciosProductosXPaises](
	[PrecioProductoXPaisID] [decimal](18, 2) NOT NULL,
	[Precio] [decimal](18, 5) NOT NULL,
	[MonedaID] [int] NOT NULL,
	[Vigente] [bit] NOT NULL,
	[InicioVigencia] [datetime2](7) NOT NULL,
	[FinalVigencia] [datetime2](7) NULL,
	[ProductoID] [int] NOT NULL,
	[IPAddress] [varchar](20) NOT NULL,
	[Username] [varchar](45) NOT NULL,
	[Checksum] [varbinary](150) NOT NULL,
	[PaisID] [int] NOT NULL,
 CONSTRAINT [PK_PreciosProductosXPaises] PRIMARY KEY CLUSTERED 
(
	[PrecioProductoXPaisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcesosResiduos]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcesosResiduos](
	[ProcesoResiduoID] [int] IDENTITY(1,1) NOT NULL,
	[ResiduoID] [int] NOT NULL,
	[DesechoReciclable] [bit] NOT NULL,
	[Nombre] [nchar](35) NOT NULL,
	[Descripcion] [varchar](150) NULL,
 CONSTRAINT [PK_ProcesosResiduos] PRIMARY KEY CLUSTERED 
(
	[ProcesoResiduoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcesosResiduosLogs]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcesosResiduosLogs](
	[ProcesoResiduoLogID] [bigint] IDENTITY(1,1) NOT NULL,
	[Hora] [datetime2](7) NOT NULL,
	[LocalID] [int] NOT NULL,
	[CostoProcesoXPaisID] [int] NOT NULL,
	[ResiduoID] [int] NOT NULL,
	[IPAddress] [varchar](20) NOT NULL,
	[Username] [varchar](45) NOT NULL,
	[Checksum] [varbinary](150) NOT NULL,
	[LoteDesechoID] [bigint] NOT NULL,
 CONSTRAINT [PK_ProcesosReciduosLogs] PRIMARY KEY CLUSTERED 
(
	[ProcesoResiduoLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[ProductoID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](25) NOT NULL,
	[Descripcion] [varchar](45) NOT NULL,
	[Enable] [bit] NOT NULL,
	[ProcesoResiduoID] [int] NOT NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[ProductoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductosXVentas]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductosXVentas](
	[ProductoXVentaID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductoID] [int] NOT NULL,
	[PrecioProductoID] [decimal](18, 2) NOT NULL,
	[VentaID] [bigint] NOT NULL,
 CONSTRAINT [PK_ProductosXVentas] PRIMARY KEY CLUSTERED 
(
	[ProductoXVentaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PuntuacionesAmbientales]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PuntuacionesAmbientales](
	[PuntuacionAmbientalID] [int] IDENTITY(1,1) NOT NULL,
	[ProductorID] [int] NOT NULL,
	[InicioVigencia] [date] NOT NULL,
	[FinalVigencia] [date] NOT NULL,
	[Default] [bit] NOT NULL,
	[IPAddress] [varchar](20) NOT NULL,
	[Username] [varchar](45) NOT NULL,
	[Checksum] [varbinary](150) NOT NULL,
 CONSTRAINT [PK_PuntuacionesAmbientales] PRIMARY KEY CLUSTERED 
(
	[PuntuacionAmbientalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Regiones]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regiones](
	[RegionID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](40) NOT NULL,
	[Descripcion] [nchar](80) NULL,
	[CiudadID] [int] NULL,
	[EstadoID] [int] NOT NULL,
 CONSTRAINT [PK_Regiones] PRIMARY KEY CLUSTERED 
(
	[RegionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResultadosProcesos]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResultadosProcesos](
	[ResultadoProcesoID] [int] IDENTITY(1,1) NOT NULL,
	[ProcesoResiduoID] [int] NOT NULL,
 CONSTRAINT [PK_ResultadosProcesos] PRIMARY KEY CLUSTERED 
(
	[ResultadoProcesoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sources]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sources](
	[SourceID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](45) NOT NULL,
 CONSTRAINT [PK_Sources] PRIMARY KEY CLUSTERED 
(
	[SourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposContactos]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposContactos](
	[TipoContactoID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
 CONSTRAINT [PK_TiposContactos] PRIMARY KEY CLUSTERED 
(
	[TipoContactoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposDeCambio]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposDeCambio](
	[TipoDeCambioID] [bigint] IDENTITY(1,1) NOT NULL,
	[MonedaID] [int] NOT NULL,
	[InicioVigencia] [datetime2](7) NOT NULL,
	[FinalVigencia] [datetime2](7) NOT NULL,
	[Default] [bit] NOT NULL,
	[PrecioCambio] [decimal](18, 5) NOT NULL,
	[IPAddress] [varchar](20) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Checksum] [varbinary](150) NOT NULL,
 CONSTRAINT [PK_TiposDeCambio] PRIMARY KEY CLUSTERED 
(
	[TipoDeCambioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposDeContratos]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposDeContratos](
	[TipoDeContratoID] [smallint] NOT NULL,
	[Descripcion] [varchar](25) NOT NULL,
 CONSTRAINT [PK_TiposDeContratos] PRIMARY KEY CLUSTERED 
(
	[TipoDeContratoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposDePagos]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposDePagos](
	[TipoDePagoID] [smallint] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](20) NOT NULL,
 CONSTRAINT [PK_TiposDePagos] PRIMARY KEY CLUSTERED 
(
	[TipoDePagoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposEventos]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposEventos](
	[TipoEventoID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](45) NOT NULL,
 CONSTRAINT [PK_TiposEventos] PRIMARY KEY CLUSTERED 
(
	[TipoEventoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposObjetos]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposObjetos](
	[TipoObjetoID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](45) NOT NULL,
 CONSTRAINT [PK_TiposObjetos] PRIMARY KEY CLUSTERED 
(
	[TipoObjetoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposRecipientesXLocales]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposRecipientesXLocales](
	[TipoRecipienteXLocalID] [int] IDENTITY(1,1) NOT NULL,
	[TipoRecipienteID] [int] NOT NULL,
	[LocalID] [int] NOT NULL,
	[cantidadEnUso] [int] NOT NULL,
	[cantidadFueraUso] [int] NOT NULL,
	[cantidadEnReparacion] [int] NOT NULL,
	[cantidadDisponible] [int] NOT NULL,
 CONSTRAINT [PK_TiposRecipientesXLocales] PRIMARY KEY CLUSTERED 
(
	[TipoRecipienteXLocalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposResiduos]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposResiduos](
	[TipoResiduoID] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [varchar](30) NOT NULL,
 CONSTRAINT [PK_TiposResiduos] PRIMARY KEY CLUSTERED 
(
	[TipoResiduoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Traducciones]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Traducciones](
	[TraduccionID] [int] IDENTITY(1,1) NOT NULL,
	[CulturaID] [smallint] NOT NULL,
	[Value] [nvarchar](150) NOT NULL,
	[TipoObjetoID] [int] NOT NULL,
	[ReferenceID] [bigint] NOT NULL,
	[IPAddress] [varchar](20) NOT NULL,
	[Username] [varchar](45) NOT NULL,
	[Checksum] [varbinary](150) NOT NULL,
 CONSTRAINT [PK_Traducciones] PRIMARY KEY CLUSTERED 
(
	[TraduccionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transacciones]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transacciones](
	[TransaccionID] [bigint] IDENTITY(1,1) NOT NULL,
	[OrigenID] [int] NOT NULL,
	[DestinatarioID] [int] NOT NULL,
	[MonedaID] [int] NOT NULL,
	[Monto] [decimal](18, 2) NOT NULL,
	[PostTime] [datetime2](7) NOT NULL,
	[IPAddress] [varchar](20) NOT NULL,
	[Username] [varchar](45) NOT NULL,
	[Checksum] [varbinary](150) NOT NULL,
	[PagoDeudaAmbientalID] [int] NULL,
 CONSTRAINT [PK_Transacciones] PRIMARY KEY CLUSTERED 
(
	[TransaccionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ubicaciones]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ubicaciones](
	[UbicacionID] [int] IDENTITY(1,1) NOT NULL,
	[PaisID] [int] NOT NULL,
	[EstadoID] [int] NOT NULL,
	[CiudadID] [int] NULL,
	[Ubicacion] [geography] NOT NULL,
	[Zipcode] [varchar](12) NOT NULL,
	[RegionID] [int] NOT NULL,
 CONSTRAINT [PK_Ubicaciones] PRIMARY KEY CLUSTERED 
(
	[UbicacionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ValoresContactos]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ValoresContactos](
	[ValorContactoID] [bigint] IDENTITY(1,1) NOT NULL,
	[Valor] [nchar](40) NOT NULL,
	[PostTime] [datetime2](7) NOT NULL,
	[Enabled] [bit] NOT NULL,
	[TipoContactoID] [int] NOT NULL,
 CONSTRAINT [PK_ValoresContactos] PRIMARY KEY CLUSTERED 
(
	[ValorContactoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[VentaID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductorID] [int] NOT NULL,
	[LocalProductorID] [bigint] NULL,
	[PostTime] [datetime2](7) NOT NULL,
	[MontoTotal] [decimal](18, 5) NOT NULL,
	[MontoPagado] [decimal](18, 5) NOT NULL,
	[Vuelto] [decimal](18, 5) NOT NULL,
	[TipoDePagoID] [smallint] NOT NULL,
	[TipoDeCambioID] [bigint] NOT NULL,
	[MonedaID] [int] NOT NULL,
	[IPAddress] [varchar](20) NOT NULL,
	[Username] [varchar](45) NOT NULL,
	[Checksum] [varbinary](150) NOT NULL,
	[AperturaCajaID] [bigint] NOT NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[VentaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VolumenesRecoleccion]    Script Date: 6/7/2023 5:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VolumenesRecoleccion](
	[VolumenRecoleccionID] [bigint] IDENTITY(1,1) NOT NULL,
	[CicloDeRecoleccionID] [int] NOT NULL,
	[InicioVigencia] [date] NOT NULL,
	[FinalVigencia] [date] NOT NULL,
	[Volumen] [decimal](18, 5) NOT NULL,
	[UnidadDeMedidaID] [smallint] NOT NULL,
	[ResiduoID] [int] NOT NULL,
 CONSTRAINT [PK_VolumenesRecoleccion] PRIMARY KEY CLUSTERED 
(
	[VolumenRecoleccionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_CostosProcesosXPaises]    Script Date: 6/7/2023 5:08:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_CostosProcesosXPaises] ON [dbo].[CostosProcesosXPaises]
(
	[CostoProcesoXPaisID] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_RecipientesLogs]    Script Date: 6/7/2023 5:08:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_RecipientesLogs] ON [dbo].[RecipientesLogs]
(
	[Hora] ASC,
	[AccionRecipienteID] ASC,
	[ResiduoID] ASC
)
INCLUDE([TipoRecipienteID],[LocalID],[CantidadRecipientes]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TiposDeCambio]    Script Date: 6/7/2023 5:08:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_TiposDeCambio] ON [dbo].[TiposDeCambio]
(
	[Default] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ValoresContactos]    Script Date: 6/7/2023 5:08:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_ValoresContactos] ON [dbo].[ValoresContactos]
(
	[Enabled] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CalidadesRecipientesLogs] ADD  CONSTRAINT [DF_CalidadesRecipientesLogs_Hora]  DEFAULT (sysutcdatetime()) FOR [Hora]
GO
ALTER TABLE [dbo].[CiclosDeRecoleccion] ADD  CONSTRAINT [DF_CiclosDeRecoleccion_Frecuencia]  DEFAULT ((7)) FOR [Frecuencia]
GO
ALTER TABLE [dbo].[Culturas] ADD  CONSTRAINT [DF_Culturas_Default]  DEFAULT ((0)) FOR [Default]
GO
ALTER TABLE [dbo].[EventsLogs] ADD  CONSTRAINT [DF_EventsLogs_PostTime]  DEFAULT (sysutcdatetime()) FOR [PostTime]
GO
ALTER TABLE [dbo].[Monedas] ADD  CONSTRAINT [DF_Monedas_MonedaBase]  DEFAULT ((0)) FOR [MonedaBase]
GO
ALTER TABLE [dbo].[RecipientesLogs] ADD  CONSTRAINT [DF_EstadosRecipientesLogs_Hora]  DEFAULT (sysutcdatetime()) FOR [Hora]
GO
ALTER TABLE [dbo].[TiposDeCambio] ADD  CONSTRAINT [DF_TiposDeCambio_InicioVigencia]  DEFAULT (sysutcdatetime()) FOR [InicioVigencia]
GO
ALTER TABLE [dbo].[ValoresContactos] ADD  CONSTRAINT [DF_ValoresContactos_PostTime]  DEFAULT (sysutcdatetime()) FOR [PostTime]
GO
ALTER TABLE [dbo].[ValoresContactos] ADD  CONSTRAINT [DF_ValoresContactos_Enabled]  DEFAULT ((1)) FOR [Enabled]
GO
ALTER TABLE [dbo].[ActoresXContrato]  WITH CHECK ADD  CONSTRAINT [FK_ActoresXContrato_Actores] FOREIGN KEY([ActorID])
REFERENCES [dbo].[Actores] ([ActorID])
GO
ALTER TABLE [dbo].[ActoresXContrato] CHECK CONSTRAINT [FK_ActoresXContrato_Actores]
GO
ALTER TABLE [dbo].[ActoresXContrato]  WITH CHECK ADD  CONSTRAINT [FK_ActoresXContrato_Contratos] FOREIGN KEY([ContratoID])
REFERENCES [dbo].[Contratos] ([ContratoID])
GO
ALTER TABLE [dbo].[ActoresXContrato] CHECK CONSTRAINT [FK_ActoresXContrato_Contratos]
GO
ALTER TABLE [dbo].[AperturasCajas]  WITH CHECK ADD  CONSTRAINT [FK_AperturasCajas_Locales] FOREIGN KEY([LocalID])
REFERENCES [dbo].[Locales] ([LocalID])
GO
ALTER TABLE [dbo].[AperturasCajas] CHECK CONSTRAINT [FK_AperturasCajas_Locales]
GO
ALTER TABLE [dbo].[AperturasCajas]  WITH CHECK ADD  CONSTRAINT [FK_AperturasCajas_Monedas] FOREIGN KEY([MonedaID])
REFERENCES [dbo].[Monedas] ([MonedaID])
GO
ALTER TABLE [dbo].[AperturasCajas] CHECK CONSTRAINT [FK_AperturasCajas_Monedas]
GO
ALTER TABLE [dbo].[AperturasCajas]  WITH CHECK ADD  CONSTRAINT [FK_AperturasCajas_TiposDeCambio] FOREIGN KEY([TipoDeCambioID])
REFERENCES [dbo].[TiposDeCambio] ([TipoDeCambioID])
GO
ALTER TABLE [dbo].[AperturasCajas] CHECK CONSTRAINT [FK_AperturasCajas_TiposDeCambio]
GO
ALTER TABLE [dbo].[BalancesLogs]  WITH CHECK ADD  CONSTRAINT [FK_BalancesLogs_Invoice] FOREIGN KEY([InvoiceID])
REFERENCES [dbo].[Invoice] ([InvoiceID])
GO
ALTER TABLE [dbo].[BalancesLogs] CHECK CONSTRAINT [FK_BalancesLogs_Invoice]
GO
ALTER TABLE [dbo].[BalancesLogs]  WITH CHECK ADD  CONSTRAINT [FK_BalancesLogs_Monedas] FOREIGN KEY([MonedaID])
REFERENCES [dbo].[Monedas] ([MonedaID])
GO
ALTER TABLE [dbo].[BalancesLogs] CHECK CONSTRAINT [FK_BalancesLogs_Monedas]
GO
ALTER TABLE [dbo].[BalancesLogs]  WITH CHECK ADD  CONSTRAINT [FK_BalancesLogs_Productores] FOREIGN KEY([ProductorID])
REFERENCES [dbo].[Productores] ([ProductorID])
GO
ALTER TABLE [dbo].[BalancesLogs] CHECK CONSTRAINT [FK_BalancesLogs_Productores]
GO
ALTER TABLE [dbo].[BalancesLogs]  WITH CHECK ADD  CONSTRAINT [FK_BalancesLogs_TiposDeCambio] FOREIGN KEY([TipoDeCambioID])
REFERENCES [dbo].[TiposDeCambio] ([TipoDeCambioID])
GO
ALTER TABLE [dbo].[BalancesLogs] CHECK CONSTRAINT [FK_BalancesLogs_TiposDeCambio]
GO
ALTER TABLE [dbo].[BalancesLogs]  WITH CHECK ADD  CONSTRAINT [FK_BalancesLogs_Transacciones] FOREIGN KEY([TransaccionID])
REFERENCES [dbo].[Transacciones] ([TransaccionID])
GO
ALTER TABLE [dbo].[BalancesLogs] CHECK CONSTRAINT [FK_BalancesLogs_Transacciones]
GO
ALTER TABLE [dbo].[CalidadesRecipientesLogs]  WITH CHECK ADD  CONSTRAINT [FK_CalidadesRecipientesLogs_CalidadesRecipientes] FOREIGN KEY([CalidadRecipienteID])
REFERENCES [dbo].[CalidadesRecipientes] ([CalidadRecipienteID])
GO
ALTER TABLE [dbo].[CalidadesRecipientesLogs] CHECK CONSTRAINT [FK_CalidadesRecipientesLogs_CalidadesRecipientes]
GO
ALTER TABLE [dbo].[CalidadesRecipientesLogs]  WITH CHECK ADD  CONSTRAINT [FK_CalidadesRecipientesLogs_Recipientes] FOREIGN KEY([RecipienteID])
REFERENCES [dbo].[TiposRecipientes] ([TipoRecipienteID])
GO
ALTER TABLE [dbo].[CalidadesRecipientesLogs] CHECK CONSTRAINT [FK_CalidadesRecipientesLogs_Recipientes]
GO
ALTER TABLE [dbo].[Camiones]  WITH CHECK ADD  CONSTRAINT [FK_Camiones_Locales] FOREIGN KEY([LocalID])
REFERENCES [dbo].[Locales] ([LocalID])
GO
ALTER TABLE [dbo].[Camiones] CHECK CONSTRAINT [FK_Camiones_Locales]
GO
ALTER TABLE [dbo].[CiclosDeRecoleccion]  WITH CHECK ADD  CONSTRAINT [FK_CiclosDeRecoleccion_Contratos] FOREIGN KEY([ContratoID])
REFERENCES [dbo].[Contratos] ([ContratoID])
GO
ALTER TABLE [dbo].[CiclosDeRecoleccion] CHECK CONSTRAINT [FK_CiclosDeRecoleccion_Contratos]
GO
ALTER TABLE [dbo].[CiclosDeRecoleccion]  WITH CHECK ADD  CONSTRAINT [FK_CiclosDeRecoleccion_EmpresasRecolectoras] FOREIGN KEY([EmpresaRecolectoraID])
REFERENCES [dbo].[EmpresasRecolectoras] ([EmpresaRecolectoraID])
GO
ALTER TABLE [dbo].[CiclosDeRecoleccion] CHECK CONSTRAINT [FK_CiclosDeRecoleccion_EmpresasRecolectoras]
GO
ALTER TABLE [dbo].[CiclosDeRecoleccion]  WITH CHECK ADD  CONSTRAINT [FK_CiclosDeRecoleccion_LocalesProductores] FOREIGN KEY([LocalProductorID])
REFERENCES [dbo].[LocalesProductores] ([LocalProductorID])
GO
ALTER TABLE [dbo].[CiclosDeRecoleccion] CHECK CONSTRAINT [FK_CiclosDeRecoleccion_LocalesProductores]
GO
ALTER TABLE [dbo].[CiclosDeRecoleccion]  WITH CHECK ADD  CONSTRAINT [FK_CiclosDeRecoleccion_LocalesProductoresXContratos] FOREIGN KEY([LocalProductorXContratoID])
REFERENCES [dbo].[LocalesProductoresXContratos] ([LocalProductorXContratoID])
GO
ALTER TABLE [dbo].[CiclosDeRecoleccion] CHECK CONSTRAINT [FK_CiclosDeRecoleccion_LocalesProductoresXContratos]
GO
ALTER TABLE [dbo].[CierresCajas]  WITH CHECK ADD  CONSTRAINT [FK_CierresCajas_AperturasCajas] FOREIGN KEY([AperturaCajaID])
REFERENCES [dbo].[AperturasCajas] ([AperturaCajaID])
GO
ALTER TABLE [dbo].[CierresCajas] CHECK CONSTRAINT [FK_CierresCajas_AperturasCajas]
GO
ALTER TABLE [dbo].[CierresCajas]  WITH CHECK ADD  CONSTRAINT [FK_CierresCajas_Locales] FOREIGN KEY([LocalID])
REFERENCES [dbo].[Locales] ([LocalID])
GO
ALTER TABLE [dbo].[CierresCajas] CHECK CONSTRAINT [FK_CierresCajas_Locales]
GO
ALTER TABLE [dbo].[Ciudades]  WITH CHECK ADD  CONSTRAINT [FK_Ciudades_Estados] FOREIGN KEY([EstadoID])
REFERENCES [dbo].[Estados] ([EstadoID])
GO
ALTER TABLE [dbo].[Ciudades] CHECK CONSTRAINT [FK_Ciudades_Estados]
GO
ALTER TABLE [dbo].[ContactosXEmpresasRecolectoras]  WITH CHECK ADD  CONSTRAINT [FK_ContactosXEmpresasRecolectoras_EmpresasRecolectoras] FOREIGN KEY([EmpresaRecolectoraID])
REFERENCES [dbo].[EmpresasRecolectoras] ([EmpresaRecolectoraID])
GO
ALTER TABLE [dbo].[ContactosXEmpresasRecolectoras] CHECK CONSTRAINT [FK_ContactosXEmpresasRecolectoras_EmpresasRecolectoras]
GO
ALTER TABLE [dbo].[ContactosXEmpresasRecolectoras]  WITH CHECK ADD  CONSTRAINT [FK_ContactosXEmpresasRecolectoras_ValoresContactos] FOREIGN KEY([ValorContactoID])
REFERENCES [dbo].[ValoresContactos] ([ValorContactoID])
GO
ALTER TABLE [dbo].[ContactosXEmpresasRecolectoras] CHECK CONSTRAINT [FK_ContactosXEmpresasRecolectoras_ValoresContactos]
GO
ALTER TABLE [dbo].[ContactosXLocales]  WITH CHECK ADD  CONSTRAINT [FK_ContactosXLocales_Locales] FOREIGN KEY([LocalID])
REFERENCES [dbo].[Locales] ([LocalID])
GO
ALTER TABLE [dbo].[ContactosXLocales] CHECK CONSTRAINT [FK_ContactosXLocales_Locales]
GO
ALTER TABLE [dbo].[ContactosXLocales]  WITH CHECK ADD  CONSTRAINT [FK_ContactosXLocales_ValoresContactos] FOREIGN KEY([ValorContactoID])
REFERENCES [dbo].[ValoresContactos] ([ValorContactoID])
GO
ALTER TABLE [dbo].[ContactosXLocales] CHECK CONSTRAINT [FK_ContactosXLocales_ValoresContactos]
GO
ALTER TABLE [dbo].[ContactosXLocalesProductores]  WITH CHECK ADD  CONSTRAINT [FK_ContactosXLocalesProductores_LocalesProductores] FOREIGN KEY([LocalProductorID])
REFERENCES [dbo].[LocalesProductores] ([LocalProductorID])
GO
ALTER TABLE [dbo].[ContactosXLocalesProductores] CHECK CONSTRAINT [FK_ContactosXLocalesProductores_LocalesProductores]
GO
ALTER TABLE [dbo].[ContactosXLocalesProductores]  WITH CHECK ADD  CONSTRAINT [FK_ContactosXLocalesProductores_ValoresContactos] FOREIGN KEY([ValorContactoID])
REFERENCES [dbo].[ValoresContactos] ([ValorContactoID])
GO
ALTER TABLE [dbo].[ContactosXLocalesProductores] CHECK CONSTRAINT [FK_ContactosXLocalesProductores_ValoresContactos]
GO
ALTER TABLE [dbo].[ContactosXProductores]  WITH CHECK ADD  CONSTRAINT [FK_ContactosXProductores_Productores] FOREIGN KEY([ProductorID])
REFERENCES [dbo].[Productores] ([ProductorID])
GO
ALTER TABLE [dbo].[ContactosXProductores] CHECK CONSTRAINT [FK_ContactosXProductores_Productores]
GO
ALTER TABLE [dbo].[ContactosXProductores]  WITH CHECK ADD  CONSTRAINT [FK_ContactosXProductores_ValoresContactos] FOREIGN KEY([ValorContactoID])
REFERENCES [dbo].[ValoresContactos] ([ValorContactoID])
GO
ALTER TABLE [dbo].[ContactosXProductores] CHECK CONSTRAINT [FK_ContactosXProductores_ValoresContactos]
GO
ALTER TABLE [dbo].[Contratos]  WITH CHECK ADD  CONSTRAINT [FK_Contratos_EmpresasRecolectoras] FOREIGN KEY([EmpresaRecolectoraID])
REFERENCES [dbo].[EmpresasRecolectoras] ([EmpresaRecolectoraID])
GO
ALTER TABLE [dbo].[Contratos] CHECK CONSTRAINT [FK_Contratos_EmpresasRecolectoras]
GO
ALTER TABLE [dbo].[Contratos]  WITH CHECK ADD  CONSTRAINT [FK_Contratos_Monedas] FOREIGN KEY([MonedaID])
REFERENCES [dbo].[Monedas] ([MonedaID])
GO
ALTER TABLE [dbo].[Contratos] CHECK CONSTRAINT [FK_Contratos_Monedas]
GO
ALTER TABLE [dbo].[Contratos]  WITH CHECK ADD  CONSTRAINT [FK_Contratos_Productores] FOREIGN KEY([ProductorID])
REFERENCES [dbo].[Productores] ([ProductorID])
GO
ALTER TABLE [dbo].[Contratos] CHECK CONSTRAINT [FK_Contratos_Productores]
GO
ALTER TABLE [dbo].[Contratos]  WITH CHECK ADD  CONSTRAINT [FK_Contratos_TiposDeCambio] FOREIGN KEY([TipoDeCambioID])
REFERENCES [dbo].[TiposDeCambio] ([TipoDeCambioID])
GO
ALTER TABLE [dbo].[Contratos] CHECK CONSTRAINT [FK_Contratos_TiposDeCambio]
GO
ALTER TABLE [dbo].[ConversionesDeMedidas]  WITH CHECK ADD  CONSTRAINT [FK_ConversionesDeMedidas_UnidadesDeMedidas] FOREIGN KEY([PrimeraUnidad])
REFERENCES [dbo].[UnidadesDeMedidas] ([UnidadDeMedidaID])
GO
ALTER TABLE [dbo].[ConversionesDeMedidas] CHECK CONSTRAINT [FK_ConversionesDeMedidas_UnidadesDeMedidas]
GO
ALTER TABLE [dbo].[ConversionesDeMedidas]  WITH CHECK ADD  CONSTRAINT [FK_ConversionesDeMedidas_UnidadesDeMedidas1] FOREIGN KEY([SegundaUnidad])
REFERENCES [dbo].[UnidadesDeMedidas] ([UnidadDeMedidaID])
GO
ALTER TABLE [dbo].[ConversionesDeMedidas] CHECK CONSTRAINT [FK_ConversionesDeMedidas_UnidadesDeMedidas1]
GO
ALTER TABLE [dbo].[CostosProcesosXPaises]  WITH CHECK ADD  CONSTRAINT [FK_CostosProcesosXPaises_Monedas] FOREIGN KEY([MonedaID])
REFERENCES [dbo].[Monedas] ([MonedaID])
GO
ALTER TABLE [dbo].[CostosProcesosXPaises] CHECK CONSTRAINT [FK_CostosProcesosXPaises_Monedas]
GO
ALTER TABLE [dbo].[CostosProcesosXPaises]  WITH CHECK ADD  CONSTRAINT [FK_CostosProcesosXPaises_Paises] FOREIGN KEY([PaisID])
REFERENCES [dbo].[Paises] ([PaisID])
GO
ALTER TABLE [dbo].[CostosProcesosXPaises] CHECK CONSTRAINT [FK_CostosProcesosXPaises_Paises]
GO
ALTER TABLE [dbo].[CostosProcesosXPaises]  WITH CHECK ADD  CONSTRAINT [FK_CostosProcesosXPaises_ProcesosResiduos] FOREIGN KEY([ProcesoResiduoID])
REFERENCES [dbo].[ProcesosResiduos] ([ProcesoResiduoID])
GO
ALTER TABLE [dbo].[CostosProcesosXPaises] CHECK CONSTRAINT [FK_CostosProcesosXPaises_ProcesosResiduos]
GO
ALTER TABLE [dbo].[Culturas]  WITH CHECK ADD  CONSTRAINT [FK_Culturas_Idiomas] FOREIGN KEY([IdiomaID])
REFERENCES [dbo].[Idiomas] ([IdiomaID])
GO
ALTER TABLE [dbo].[Culturas] CHECK CONSTRAINT [FK_Culturas_Idiomas]
GO
ALTER TABLE [dbo].[Culturas]  WITH CHECK ADD  CONSTRAINT [FK_Culturas_Paises] FOREIGN KEY([PaisID])
REFERENCES [dbo].[Paises] ([PaisID])
GO
ALTER TABLE [dbo].[Culturas] CHECK CONSTRAINT [FK_Culturas_Paises]
GO
ALTER TABLE [dbo].[EmpresasRecolectoras]  WITH CHECK ADD  CONSTRAINT [FK_EmpresasRecolectoras_Actores] FOREIGN KEY([ActorID])
REFERENCES [dbo].[Actores] ([ActorID])
GO
ALTER TABLE [dbo].[EmpresasRecolectoras] CHECK CONSTRAINT [FK_EmpresasRecolectoras_Actores]
GO
ALTER TABLE [dbo].[Estados]  WITH CHECK ADD  CONSTRAINT [FK_Estados_Paises] FOREIGN KEY([PaisID])
REFERENCES [dbo].[Paises] ([PaisID])
GO
ALTER TABLE [dbo].[Estados] CHECK CONSTRAINT [FK_Estados_Paises]
GO
ALTER TABLE [dbo].[EstadosContratosLogs]  WITH CHECK ADD  CONSTRAINT [FK_EstadosContratosLogs_Contratos] FOREIGN KEY([ContratoID])
REFERENCES [dbo].[Contratos] ([ContratoID])
GO
ALTER TABLE [dbo].[EstadosContratosLogs] CHECK CONSTRAINT [FK_EstadosContratosLogs_Contratos]
GO
ALTER TABLE [dbo].[EstadosContratosLogs]  WITH CHECK ADD  CONSTRAINT [FK_EstadosContratosLogs_EstadosContratos] FOREIGN KEY([EstadoContratoID])
REFERENCES [dbo].[EstadosContratos] ([EstadoContratoID])
GO
ALTER TABLE [dbo].[EstadosContratosLogs] CHECK CONSTRAINT [FK_EstadosContratosLogs_EstadosContratos]
GO
ALTER TABLE [dbo].[EventsLogs]  WITH CHECK ADD  CONSTRAINT [FK_EventsLogs_Levels] FOREIGN KEY([LevelID])
REFERENCES [dbo].[Levels] ([LevelID])
GO
ALTER TABLE [dbo].[EventsLogs] CHECK CONSTRAINT [FK_EventsLogs_Levels]
GO
ALTER TABLE [dbo].[EventsLogs]  WITH CHECK ADD  CONSTRAINT [FK_EventsLogs_Sources] FOREIGN KEY([SourceID])
REFERENCES [dbo].[Sources] ([SourceID])
GO
ALTER TABLE [dbo].[EventsLogs] CHECK CONSTRAINT [FK_EventsLogs_Sources]
GO
ALTER TABLE [dbo].[EventsLogs]  WITH CHECK ADD  CONSTRAINT [FK_EventsLogs_TiposEventos] FOREIGN KEY([TipoEventoID])
REFERENCES [dbo].[TiposEventos] ([TipoEventoID])
GO
ALTER TABLE [dbo].[EventsLogs] CHECK CONSTRAINT [FK_EventsLogs_TiposEventos]
GO
ALTER TABLE [dbo].[EventsLogs]  WITH CHECK ADD  CONSTRAINT [FK_EventsLogs_TiposObjetos] FOREIGN KEY([TipoObjetoID])
REFERENCES [dbo].[TiposObjetos] ([TipoObjetoID])
GO
ALTER TABLE [dbo].[EventsLogs] CHECK CONSTRAINT [FK_EventsLogs_TiposObjetos]
GO
ALTER TABLE [dbo].[InventoryLogs]  WITH CHECK ADD  CONSTRAINT [FK_InventoryLogs_AccionesInventarios] FOREIGN KEY([AccionInventarioID])
REFERENCES [dbo].[AccionesInventarios] ([AccionInventarioID])
GO
ALTER TABLE [dbo].[InventoryLogs] CHECK CONSTRAINT [FK_InventoryLogs_AccionesInventarios]
GO
ALTER TABLE [dbo].[InventoryLogs]  WITH CHECK ADD  CONSTRAINT [FK_InventoryLogs_Locales] FOREIGN KEY([LocalID])
REFERENCES [dbo].[Locales] ([LocalID])
GO
ALTER TABLE [dbo].[InventoryLogs] CHECK CONSTRAINT [FK_InventoryLogs_Locales]
GO
ALTER TABLE [dbo].[InventoryLogs]  WITH CHECK ADD  CONSTRAINT [FK_InventoryLogs_ProcesosResiduosLogs] FOREIGN KEY([ProcesoResiduoLogID])
REFERENCES [dbo].[ProcesosResiduosLogs] ([ProcesoResiduoLogID])
GO
ALTER TABLE [dbo].[InventoryLogs] CHECK CONSTRAINT [FK_InventoryLogs_ProcesosResiduosLogs]
GO
ALTER TABLE [dbo].[InventoryLogs]  WITH CHECK ADD  CONSTRAINT [FK_InventoryLogs_Productos] FOREIGN KEY([ProductoID])
REFERENCES [dbo].[Productos] ([ProductoID])
GO
ALTER TABLE [dbo].[InventoryLogs] CHECK CONSTRAINT [FK_InventoryLogs_Productos]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Monedas] FOREIGN KEY([MonedaID])
REFERENCES [dbo].[Monedas] ([MonedaID])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Monedas]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Productores] FOREIGN KEY([ProductorID])
REFERENCES [dbo].[Productores] ([ProductorID])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Productores]
GO
ALTER TABLE [dbo].[Locales]  WITH CHECK ADD  CONSTRAINT [FK_Locales_Actores] FOREIGN KEY([ActorID])
REFERENCES [dbo].[Actores] ([ActorID])
GO
ALTER TABLE [dbo].[Locales] CHECK CONSTRAINT [FK_Locales_Actores]
GO
ALTER TABLE [dbo].[Locales]  WITH CHECK ADD  CONSTRAINT [FK_Locales_Regiones] FOREIGN KEY([RegionID])
REFERENCES [dbo].[Regiones] ([RegionID])
GO
ALTER TABLE [dbo].[Locales] CHECK CONSTRAINT [FK_Locales_Regiones]
GO
ALTER TABLE [dbo].[Locales]  WITH CHECK ADD  CONSTRAINT [FK_Locales_Ubicaciones] FOREIGN KEY([UbicacionID])
REFERENCES [dbo].[Ubicaciones] ([UbicacionID])
GO
ALTER TABLE [dbo].[Locales] CHECK CONSTRAINT [FK_Locales_Ubicaciones]
GO
ALTER TABLE [dbo].[LocalesProductores]  WITH CHECK ADD  CONSTRAINT [FK_LocalesProductores_Productores] FOREIGN KEY([ProductorID])
REFERENCES [dbo].[Productores] ([ProductorID])
GO
ALTER TABLE [dbo].[LocalesProductores] CHECK CONSTRAINT [FK_LocalesProductores_Productores]
GO
ALTER TABLE [dbo].[LocalesProductores]  WITH CHECK ADD  CONSTRAINT [FK_LocalesProductores_Ubicaciones] FOREIGN KEY([UbicacionID])
REFERENCES [dbo].[Ubicaciones] ([UbicacionID])
GO
ALTER TABLE [dbo].[LocalesProductores] CHECK CONSTRAINT [FK_LocalesProductores_Ubicaciones]
GO
ALTER TABLE [dbo].[LocalesProductoresXContratos]  WITH CHECK ADD  CONSTRAINT [FK_LocalesProductoresXContratos_Contratos] FOREIGN KEY([ContratoID])
REFERENCES [dbo].[Contratos] ([ContratoID])
GO
ALTER TABLE [dbo].[LocalesProductoresXContratos] CHECK CONSTRAINT [FK_LocalesProductoresXContratos_Contratos]
GO
ALTER TABLE [dbo].[LocalesProductoresXContratos]  WITH CHECK ADD  CONSTRAINT [FK_LocalesProductoresXContratos_LocalesProductores] FOREIGN KEY([LocalProductorID])
REFERENCES [dbo].[LocalesProductores] ([LocalProductorID])
GO
ALTER TABLE [dbo].[LocalesProductoresXContratos] CHECK CONSTRAINT [FK_LocalesProductoresXContratos_LocalesProductores]
GO
ALTER TABLE [dbo].[LotesDesechos]  WITH CHECK ADD  CONSTRAINT [FK_LotesDesechos_Locales] FOREIGN KEY([LocalID])
REFERENCES [dbo].[Locales] ([LocalID])
GO
ALTER TABLE [dbo].[LotesDesechos] CHECK CONSTRAINT [FK_LotesDesechos_Locales]
GO
ALTER TABLE [dbo].[LotesDesechos]  WITH CHECK ADD  CONSTRAINT [FK_LotesDesechos_Residuos] FOREIGN KEY([ResiduoID])
REFERENCES [dbo].[Residuos] ([ResiduoID])
GO
ALTER TABLE [dbo].[LotesDesechos] CHECK CONSTRAINT [FK_LotesDesechos_Residuos]
GO
ALTER TABLE [dbo].[PagosDeudasAmbientales]  WITH CHECK ADD  CONSTRAINT [FK_PagosDeudasAmbientales_Contratos] FOREIGN KEY([ContratoID])
REFERENCES [dbo].[Contratos] ([ContratoID])
GO
ALTER TABLE [dbo].[PagosDeudasAmbientales] CHECK CONSTRAINT [FK_PagosDeudasAmbientales_Contratos]
GO
ALTER TABLE [dbo].[PagosDeudasAmbientales]  WITH CHECK ADD  CONSTRAINT [FK_PagosDeudasAmbientales_Monedas] FOREIGN KEY([MonedaID])
REFERENCES [dbo].[Monedas] ([MonedaID])
GO
ALTER TABLE [dbo].[PagosDeudasAmbientales] CHECK CONSTRAINT [FK_PagosDeudasAmbientales_Monedas]
GO
ALTER TABLE [dbo].[PagosDeudasAmbientales]  WITH CHECK ADD  CONSTRAINT [FK_PagosDeudasAmbientales_Productores] FOREIGN KEY([ProductorID])
REFERENCES [dbo].[Productores] ([ProductorID])
GO
ALTER TABLE [dbo].[PagosDeudasAmbientales] CHECK CONSTRAINT [FK_PagosDeudasAmbientales_Productores]
GO
ALTER TABLE [dbo].[PagosDeudasAmbientales]  WITH CHECK ADD  CONSTRAINT [FK_PagosDeudasAmbientales_Productores1] FOREIGN KEY([ProductorAyudadoID])
REFERENCES [dbo].[Productores] ([ProductorID])
GO
ALTER TABLE [dbo].[PagosDeudasAmbientales] CHECK CONSTRAINT [FK_PagosDeudasAmbientales_Productores1]
GO
ALTER TABLE [dbo].[Paises]  WITH CHECK ADD  CONSTRAINT [FK_Paises_Monedas] FOREIGN KEY([MonedaID])
REFERENCES [dbo].[Monedas] ([MonedaID])
GO
ALTER TABLE [dbo].[Paises] CHECK CONSTRAINT [FK_Paises_Monedas]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_Invoice] FOREIGN KEY([InvoiceID])
REFERENCES [dbo].[Invoice] ([InvoiceID])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_Invoice]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_Monedas] FOREIGN KEY([MonedaID])
REFERENCES [dbo].[Monedas] ([MonedaID])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_Monedas]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_Productores] FOREIGN KEY([ProductorID])
REFERENCES [dbo].[Productores] ([ProductorID])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_Productores]
GO
ALTER TABLE [dbo].[PorcentajesActoresXContratos]  WITH CHECK ADD  CONSTRAINT [FK_PorcentajesActoresXContratos_ActoresXContrato] FOREIGN KEY([ActoresXContratoID])
REFERENCES [dbo].[ActoresXContrato] ([ActorXContratoID])
GO
ALTER TABLE [dbo].[PorcentajesActoresXContratos] CHECK CONSTRAINT [FK_PorcentajesActoresXContratos_ActoresXContrato]
GO
ALTER TABLE [dbo].[PreciosProductosXPaises]  WITH CHECK ADD  CONSTRAINT [FK_PreciosProductosXPaises_Monedas] FOREIGN KEY([MonedaID])
REFERENCES [dbo].[Monedas] ([MonedaID])
GO
ALTER TABLE [dbo].[PreciosProductosXPaises] CHECK CONSTRAINT [FK_PreciosProductosXPaises_Monedas]
GO
ALTER TABLE [dbo].[PreciosProductosXPaises]  WITH CHECK ADD  CONSTRAINT [FK_PreciosProductosXPaises_Paises] FOREIGN KEY([PaisID])
REFERENCES [dbo].[Paises] ([PaisID])
GO
ALTER TABLE [dbo].[PreciosProductosXPaises] CHECK CONSTRAINT [FK_PreciosProductosXPaises_Paises]
GO
ALTER TABLE [dbo].[PreciosProductosXPaises]  WITH CHECK ADD  CONSTRAINT [FK_PreciosProductosXPaises_Productos] FOREIGN KEY([ProductoID])
REFERENCES [dbo].[Productos] ([ProductoID])
GO
ALTER TABLE [dbo].[PreciosProductosXPaises] CHECK CONSTRAINT [FK_PreciosProductosXPaises_Productos]
GO
ALTER TABLE [dbo].[ProcesosResiduos]  WITH CHECK ADD  CONSTRAINT [FK_ProcesosResiduos_Residuos] FOREIGN KEY([ResiduoID])
REFERENCES [dbo].[Residuos] ([ResiduoID])
GO
ALTER TABLE [dbo].[ProcesosResiduos] CHECK CONSTRAINT [FK_ProcesosResiduos_Residuos]
GO
ALTER TABLE [dbo].[ProcesosResiduosLogs]  WITH CHECK ADD  CONSTRAINT [FK_ProcesosResiduosLogs_CostosProcesosXPaises] FOREIGN KEY([CostoProcesoXPaisID])
REFERENCES [dbo].[CostosProcesosXPaises] ([CostoProcesoXPaisID])
GO
ALTER TABLE [dbo].[ProcesosResiduosLogs] CHECK CONSTRAINT [FK_ProcesosResiduosLogs_CostosProcesosXPaises]
GO
ALTER TABLE [dbo].[ProcesosResiduosLogs]  WITH CHECK ADD  CONSTRAINT [FK_ProcesosResiduosLogs_Locales] FOREIGN KEY([LocalID])
REFERENCES [dbo].[Locales] ([LocalID])
GO
ALTER TABLE [dbo].[ProcesosResiduosLogs] CHECK CONSTRAINT [FK_ProcesosResiduosLogs_Locales]
GO
ALTER TABLE [dbo].[ProcesosResiduosLogs]  WITH CHECK ADD  CONSTRAINT [FK_ProcesosResiduosLogs_LotesDesechos] FOREIGN KEY([LoteDesechoID])
REFERENCES [dbo].[LotesDesechos] ([LoteDesechoID])
GO
ALTER TABLE [dbo].[ProcesosResiduosLogs] CHECK CONSTRAINT [FK_ProcesosResiduosLogs_LotesDesechos]
GO
ALTER TABLE [dbo].[ProcesosResiduosLogs]  WITH CHECK ADD  CONSTRAINT [FK_ProcesosResiduosLogs_Residuos] FOREIGN KEY([ResiduoID])
REFERENCES [dbo].[Residuos] ([ResiduoID])
GO
ALTER TABLE [dbo].[ProcesosResiduosLogs] CHECK CONSTRAINT [FK_ProcesosResiduosLogs_Residuos]
GO
ALTER TABLE [dbo].[Productores]  WITH CHECK ADD  CONSTRAINT [FK_Productores_Actores] FOREIGN KEY([ActorID])
REFERENCES [dbo].[Actores] ([ActorID])
GO
ALTER TABLE [dbo].[Productores] CHECK CONSTRAINT [FK_Productores_Actores]
GO
ALTER TABLE [dbo].[Productores]  WITH CHECK ADD  CONSTRAINT [FK_Productores_Industrias] FOREIGN KEY([IndustriaID])
REFERENCES [dbo].[Industrias] ([IndustriaID])
GO
ALTER TABLE [dbo].[Productores] CHECK CONSTRAINT [FK_Productores_Industrias]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_ProcesosResiduos] FOREIGN KEY([ProcesoResiduoID])
REFERENCES [dbo].[ProcesosResiduos] ([ProcesoResiduoID])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_ProcesosResiduos]
GO
ALTER TABLE [dbo].[ProductosXVentas]  WITH CHECK ADD  CONSTRAINT [FK_ProductosXVentas_PreciosProductosXPaises] FOREIGN KEY([PrecioProductoID])
REFERENCES [dbo].[PreciosProductosXPaises] ([PrecioProductoXPaisID])
GO
ALTER TABLE [dbo].[ProductosXVentas] CHECK CONSTRAINT [FK_ProductosXVentas_PreciosProductosXPaises]
GO
ALTER TABLE [dbo].[ProductosXVentas]  WITH CHECK ADD  CONSTRAINT [FK_ProductosXVentas_Productos] FOREIGN KEY([ProductoID])
REFERENCES [dbo].[Productos] ([ProductoID])
GO
ALTER TABLE [dbo].[ProductosXVentas] CHECK CONSTRAINT [FK_ProductosXVentas_Productos]
GO
ALTER TABLE [dbo].[ProductosXVentas]  WITH CHECK ADD  CONSTRAINT [FK_ProductosXVentas_Ventas] FOREIGN KEY([VentaID])
REFERENCES [dbo].[Ventas] ([VentaID])
GO
ALTER TABLE [dbo].[ProductosXVentas] CHECK CONSTRAINT [FK_ProductosXVentas_Ventas]
GO
ALTER TABLE [dbo].[PuntuacionesAmbientales]  WITH CHECK ADD  CONSTRAINT [FK_PuntuacionesAmbientales_Productores] FOREIGN KEY([ProductorID])
REFERENCES [dbo].[Productores] ([ProductorID])
GO
ALTER TABLE [dbo].[PuntuacionesAmbientales] CHECK CONSTRAINT [FK_PuntuacionesAmbientales_Productores]
GO
ALTER TABLE [dbo].[RecipientesLogs]  WITH CHECK ADD  CONSTRAINT [FK_EstadosRecipientesLogs_Recipientes] FOREIGN KEY([TipoRecipienteID])
REFERENCES [dbo].[TiposRecipientes] ([TipoRecipienteID])
GO
ALTER TABLE [dbo].[RecipientesLogs] CHECK CONSTRAINT [FK_EstadosRecipientesLogs_Recipientes]
GO
ALTER TABLE [dbo].[RecipientesLogs]  WITH CHECK ADD  CONSTRAINT [FK_RecipientesLogs_Contratos] FOREIGN KEY([ContratoID])
REFERENCES [dbo].[Contratos] ([ContratoID])
GO
ALTER TABLE [dbo].[RecipientesLogs] CHECK CONSTRAINT [FK_RecipientesLogs_Contratos]
GO
ALTER TABLE [dbo].[RecipientesLogs]  WITH CHECK ADD  CONSTRAINT [FK_RecipientesLogs_EmpresasRecolectoras] FOREIGN KEY([EmpresaRecolectoraID])
REFERENCES [dbo].[EmpresasRecolectoras] ([EmpresaRecolectoraID])
GO
ALTER TABLE [dbo].[RecipientesLogs] CHECK CONSTRAINT [FK_RecipientesLogs_EmpresasRecolectoras]
GO
ALTER TABLE [dbo].[RecipientesLogs]  WITH CHECK ADD  CONSTRAINT [FK_RecipientesLogs_LotesDesechos] FOREIGN KEY([LoteDesechoID])
REFERENCES [dbo].[LotesDesechos] ([LoteDesechoID])
GO
ALTER TABLE [dbo].[RecipientesLogs] CHECK CONSTRAINT [FK_RecipientesLogs_LotesDesechos]
GO
ALTER TABLE [dbo].[RecipientesLogs]  WITH CHECK ADD  CONSTRAINT [FK_RecipientesXLocalesLogs_AccionesRecipientes] FOREIGN KEY([AccionRecipienteID])
REFERENCES [dbo].[AccionesRecipientes] ([AccionRecipienteID])
GO
ALTER TABLE [dbo].[RecipientesLogs] CHECK CONSTRAINT [FK_RecipientesXLocalesLogs_AccionesRecipientes]
GO
ALTER TABLE [dbo].[RecipientesLogs]  WITH CHECK ADD  CONSTRAINT [FK_RecipientesXLocalesLogs_Locales] FOREIGN KEY([LocalID])
REFERENCES [dbo].[Locales] ([LocalID])
GO
ALTER TABLE [dbo].[RecipientesLogs] CHECK CONSTRAINT [FK_RecipientesXLocalesLogs_Locales]
GO
ALTER TABLE [dbo].[RecipientesLogs]  WITH CHECK ADD  CONSTRAINT [FK_RecipientesXLocalesLogs_Residuos] FOREIGN KEY([ResiduoID])
REFERENCES [dbo].[Residuos] ([ResiduoID])
GO
ALTER TABLE [dbo].[RecipientesLogs] CHECK CONSTRAINT [FK_RecipientesXLocalesLogs_Residuos]
GO
ALTER TABLE [dbo].[Regiones]  WITH CHECK ADD  CONSTRAINT [FK_Regiones_Ciudades] FOREIGN KEY([CiudadID])
REFERENCES [dbo].[Ciudades] ([CiudadID])
GO
ALTER TABLE [dbo].[Regiones] CHECK CONSTRAINT [FK_Regiones_Ciudades]
GO
ALTER TABLE [dbo].[Regiones]  WITH CHECK ADD  CONSTRAINT [FK_Regiones_Estados] FOREIGN KEY([EstadoID])
REFERENCES [dbo].[Estados] ([EstadoID])
GO
ALTER TABLE [dbo].[Regiones] CHECK CONSTRAINT [FK_Regiones_Estados]
GO
ALTER TABLE [dbo].[Residuos]  WITH CHECK ADD  CONSTRAINT [FK_Residuos_TiposResiduos] FOREIGN KEY([TipoResiduoID])
REFERENCES [dbo].[TiposResiduos] ([TipoResiduoID])
GO
ALTER TABLE [dbo].[Residuos] CHECK CONSTRAINT [FK_Residuos_TiposResiduos]
GO
ALTER TABLE [dbo].[Residuos]  WITH CHECK ADD  CONSTRAINT [FK_Residuos_UnidadesDeMedidas] FOREIGN KEY([UnidadDeMedidaID])
REFERENCES [dbo].[UnidadesDeMedidas] ([UnidadDeMedidaID])
GO
ALTER TABLE [dbo].[Residuos] CHECK CONSTRAINT [FK_Residuos_UnidadesDeMedidas]
GO
ALTER TABLE [dbo].[ResultadosProcesos]  WITH CHECK ADD  CONSTRAINT [FK_ResultadosProcesos_ProcesosResiduos] FOREIGN KEY([ProcesoResiduoID])
REFERENCES [dbo].[ProcesosResiduos] ([ProcesoResiduoID])
GO
ALTER TABLE [dbo].[ResultadosProcesos] CHECK CONSTRAINT [FK_ResultadosProcesos_ProcesosResiduos]
GO
ALTER TABLE [dbo].[TiposDeCambio]  WITH CHECK ADD  CONSTRAINT [FK_TiposDeCambio_Monedas] FOREIGN KEY([MonedaID])
REFERENCES [dbo].[Monedas] ([MonedaID])
GO
ALTER TABLE [dbo].[TiposDeCambio] CHECK CONSTRAINT [FK_TiposDeCambio_Monedas]
GO
ALTER TABLE [dbo].[TiposRecipientes]  WITH CHECK ADD  CONSTRAINT [FK_Recipientes_TiposResiduos] FOREIGN KEY([TipoResiduoID])
REFERENCES [dbo].[TiposResiduos] ([TipoResiduoID])
GO
ALTER TABLE [dbo].[TiposRecipientes] CHECK CONSTRAINT [FK_Recipientes_TiposResiduos]
GO
ALTER TABLE [dbo].[TiposRecipientes]  WITH CHECK ADD  CONSTRAINT [FK_Recipientes_UnidadesDeMedidas] FOREIGN KEY([UnidadDeMedidaID])
REFERENCES [dbo].[UnidadesDeMedidas] ([UnidadDeMedidaID])
GO
ALTER TABLE [dbo].[TiposRecipientes] CHECK CONSTRAINT [FK_Recipientes_UnidadesDeMedidas]
GO
ALTER TABLE [dbo].[TiposRecipientes]  WITH CHECK ADD  CONSTRAINT [FK_TiposRecipientes_BrandsRecipientes] FOREIGN KEY([BrandRecipienteID])
REFERENCES [dbo].[BrandsRecipientes] ([BrandRecipienteID])
GO
ALTER TABLE [dbo].[TiposRecipientes] CHECK CONSTRAINT [FK_TiposRecipientes_BrandsRecipientes]
GO
ALTER TABLE [dbo].[TiposRecipientesXLocales]  WITH CHECK ADD  CONSTRAINT [FK_TiposRecipientesXLocales_Locales] FOREIGN KEY([LocalID])
REFERENCES [dbo].[Locales] ([LocalID])
GO
ALTER TABLE [dbo].[TiposRecipientesXLocales] CHECK CONSTRAINT [FK_TiposRecipientesXLocales_Locales]
GO
ALTER TABLE [dbo].[TiposRecipientesXLocales]  WITH CHECK ADD  CONSTRAINT [FK_TiposRecipientesXLocales_TiposRecipientes] FOREIGN KEY([TipoRecipienteID])
REFERENCES [dbo].[TiposRecipientes] ([TipoRecipienteID])
GO
ALTER TABLE [dbo].[TiposRecipientesXLocales] CHECK CONSTRAINT [FK_TiposRecipientesXLocales_TiposRecipientes]
GO
ALTER TABLE [dbo].[Traducciones]  WITH CHECK ADD  CONSTRAINT [FK_Traducciones_Culturas] FOREIGN KEY([CulturaID])
REFERENCES [dbo].[Culturas] ([CulturaID])
GO
ALTER TABLE [dbo].[Traducciones] CHECK CONSTRAINT [FK_Traducciones_Culturas]
GO
ALTER TABLE [dbo].[Traducciones]  WITH CHECK ADD  CONSTRAINT [FK_Traducciones_TiposObjetos] FOREIGN KEY([TipoObjetoID])
REFERENCES [dbo].[TiposObjetos] ([TipoObjetoID])
GO
ALTER TABLE [dbo].[Traducciones] CHECK CONSTRAINT [FK_Traducciones_TiposObjetos]
GO
ALTER TABLE [dbo].[Transacciones]  WITH CHECK ADD  CONSTRAINT [FK_Transacciones_Monedas] FOREIGN KEY([MonedaID])
REFERENCES [dbo].[Monedas] ([MonedaID])
GO
ALTER TABLE [dbo].[Transacciones] CHECK CONSTRAINT [FK_Transacciones_Monedas]
GO
ALTER TABLE [dbo].[Transacciones]  WITH CHECK ADD  CONSTRAINT [FK_Transacciones_PagosDeudasAmbientales] FOREIGN KEY([PagoDeudaAmbientalID])
REFERENCES [dbo].[PagosDeudasAmbientales] ([PagoDeudaAmbientalID])
GO
ALTER TABLE [dbo].[Transacciones] CHECK CONSTRAINT [FK_Transacciones_PagosDeudasAmbientales]
GO
ALTER TABLE [dbo].[Transacciones]  WITH CHECK ADD  CONSTRAINT [FK_Transacciones_Productores_1] FOREIGN KEY([OrigenID])
REFERENCES [dbo].[Productores] ([ProductorID])
GO
ALTER TABLE [dbo].[Transacciones] CHECK CONSTRAINT [FK_Transacciones_Productores_1]
GO
ALTER TABLE [dbo].[Transacciones]  WITH CHECK ADD  CONSTRAINT [FK_Transacciones_Productores_2] FOREIGN KEY([DestinatarioID])
REFERENCES [dbo].[Productores] ([ProductorID])
GO
ALTER TABLE [dbo].[Transacciones] CHECK CONSTRAINT [FK_Transacciones_Productores_2]
GO
ALTER TABLE [dbo].[Ubicaciones]  WITH CHECK ADD  CONSTRAINT [FK_Ubicaciones_Ciudades] FOREIGN KEY([CiudadID])
REFERENCES [dbo].[Ciudades] ([CiudadID])
GO
ALTER TABLE [dbo].[Ubicaciones] CHECK CONSTRAINT [FK_Ubicaciones_Ciudades]
GO
ALTER TABLE [dbo].[Ubicaciones]  WITH CHECK ADD  CONSTRAINT [FK_Ubicaciones_Estados] FOREIGN KEY([EstadoID])
REFERENCES [dbo].[Estados] ([EstadoID])
GO
ALTER TABLE [dbo].[Ubicaciones] CHECK CONSTRAINT [FK_Ubicaciones_Estados]
GO
ALTER TABLE [dbo].[Ubicaciones]  WITH CHECK ADD  CONSTRAINT [FK_Ubicaciones_Paises] FOREIGN KEY([PaisID])
REFERENCES [dbo].[Paises] ([PaisID])
GO
ALTER TABLE [dbo].[Ubicaciones] CHECK CONSTRAINT [FK_Ubicaciones_Paises]
GO
ALTER TABLE [dbo].[Ubicaciones]  WITH CHECK ADD  CONSTRAINT [FK_Ubicaciones_Regiones] FOREIGN KEY([RegionID])
REFERENCES [dbo].[Regiones] ([RegionID])
GO
ALTER TABLE [dbo].[Ubicaciones] CHECK CONSTRAINT [FK_Ubicaciones_Regiones]
GO
ALTER TABLE [dbo].[ValoresContactos]  WITH CHECK ADD  CONSTRAINT [FK_ValoresContactos_TiposContactos] FOREIGN KEY([TipoContactoID])
REFERENCES [dbo].[TiposContactos] ([TipoContactoID])
GO
ALTER TABLE [dbo].[ValoresContactos] CHECK CONSTRAINT [FK_ValoresContactos_TiposContactos]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_AperturasCajas] FOREIGN KEY([AperturaCajaID])
REFERENCES [dbo].[AperturasCajas] ([AperturaCajaID])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_AperturasCajas]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_LocalesProductores] FOREIGN KEY([LocalProductorID])
REFERENCES [dbo].[LocalesProductores] ([LocalProductorID])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_LocalesProductores]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Monedas] FOREIGN KEY([MonedaID])
REFERENCES [dbo].[Monedas] ([MonedaID])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Monedas]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Productores] FOREIGN KEY([ProductorID])
REFERENCES [dbo].[Productores] ([ProductorID])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Productores]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_TiposDeCambio] FOREIGN KEY([TipoDeCambioID])
REFERENCES [dbo].[TiposDeCambio] ([TipoDeCambioID])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_TiposDeCambio]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_TiposDePagos] FOREIGN KEY([TipoDePagoID])
REFERENCES [dbo].[TiposDePagos] ([TipoDePagoID])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_TiposDePagos]
GO
ALTER TABLE [dbo].[VolumenesRecoleccion]  WITH CHECK ADD  CONSTRAINT [FK_VolumenesRecoleccion_CiclosDeRecoleccion] FOREIGN KEY([CicloDeRecoleccionID])
REFERENCES [dbo].[CiclosDeRecoleccion] ([CicloDeRecoleccionID])
GO
ALTER TABLE [dbo].[VolumenesRecoleccion] CHECK CONSTRAINT [FK_VolumenesRecoleccion_CiclosDeRecoleccion]
GO
ALTER TABLE [dbo].[VolumenesRecoleccion]  WITH CHECK ADD  CONSTRAINT [FK_VolumenesRecoleccion_Residuos] FOREIGN KEY([ResiduoID])
REFERENCES [dbo].[Residuos] ([ResiduoID])
GO
ALTER TABLE [dbo].[VolumenesRecoleccion] CHECK CONSTRAINT [FK_VolumenesRecoleccion_Residuos]
GO
ALTER TABLE [dbo].[VolumenesRecoleccion]  WITH CHECK ADD  CONSTRAINT [FK_VolumenesRecoleccion_UnidadesDeMedidas] FOREIGN KEY([UnidadDeMedidaID])
REFERENCES [dbo].[UnidadesDeMedidas] ([UnidadDeMedidaID])
GO
ALTER TABLE [dbo].[VolumenesRecoleccion] CHECK CONSTRAINT [FK_VolumenesRecoleccion_UnidadesDeMedidas]
GO
/****** Object:  StoredProcedure [dbo].[EVSP_RegistrarMoneda]    Script Date: 6/7/2023 5:08:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-----------------------------------------------------------
-- Author: Luis Navarro
-- Fecha: 2023-27-04
-- Desc: a
-----------------------------------------------------------
CREATE PROCEDURE [dbo].[EVSP_RegistrarMoneda]
	@Currencies TCurrencyData READONLY
AS 
BEGIN
	
	SET NOCOUNT ON -- no retorne metadatos
	
	DECLARE @ErrorNumber INT, @ErrorSeverity INT, @ErrorState INT, @CustomError INT
	DECLARE @Message VARCHAR(200)
	DECLARE @InicieTransaccion BIT

	
	SET @InicieTransaccion = 0
	IF @@TRANCOUNT=0 BEGIN
		SET @InicieTransaccion = 1
		SET TRANSACTION ISOLATION LEVEL READ COMMITTED
		BEGIN TRANSACTION		
	END
	
	BEGIN TRY
		SET @CustomError = 2001

		INSERT INTO Monedas (Nombre, Acronimo, Simbolo) SELECT Nombre, Acronimo, Simbolo FROM @Currencies  
		
		IF @InicieTransaccion=1 BEGIN
			COMMIT
		END
	END TRY
	BEGIN CATCH
		SET @ErrorNumber = ERROR_NUMBER()
		SET @ErrorSeverity = ERROR_SEVERITY()
		SET @ErrorState = ERROR_STATE()
		SET @Message = ERROR_MESSAGE()
		
		IF @InicieTransaccion=1 BEGIN
			ROLLBACK
		END
		RAISERROR('%s - Error Number: %i', 
			@ErrorSeverity, @ErrorState, @Message, @CustomError)
	END CATCH	
END
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[EVSP_RegistrarTransaccion]    Script Date: 6/7/2023 5:08:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EVSP_RegistrarTransaccion]
	@EmpresaOrigen NCHAR(50),
	@EmpresaFinal NCHAR(50),
	@Monto BIGINT,
	@Moneda VARCHAR(30)
AS
BEGIN

	SET NOCOUNT ON -- no retorne metadatos

	DECLARE @ErrorNumber INT, @ErrorSeverity INT, @ErrorState INT, @CustomError INT
	DECLARE @Message VARCHAR(200)
	DECLARE @InicieTransaccion BIT

	-- declaracion de otras variables
	DECLARE @TipoDeCambioID int
	DECLARE @MonedaID int
	DECLARE @OrigenID int
	DECLARE @DestinatarioID int
	DECLARE @BalanceOrigen int
	DECLARE @BalanceDestinatario int
	DECLARE @TransID bigint
	
	-- operaciones de select que no tengan que ser bloqueadas
	SET @MonedaID = (SELECT TOP 1 MonedaID FROM Monedas WHERE Nombre = @Moneda)
	SET @TipoDeCambioID = (SELECT TOP 1 TipoDeCambioID FROM TiposDeCambio WHERE [Default] = 1 AND MonedaID = @MonedaID)
	SET @OrigenID = (SELECT TOP 1 ProductorID FROM Productores WHERE Nombre = @EmpresaOrigen)
	SET @DestinatarioID = (SELECT TOP 1 ProductorID FROM Productores WHERE Nombre = @EmpresaFinal)

	IF @OrigenID IS NULL OR @DestinatarioID IS NULL BEGIN
		SET @ErrorNumber = 54000
		SET @ErrorSeverity = 10000
		SET @ErrorState = 10000
		SET @CustomError = 2004
		SET @Message = 'Las empresas no son validas'
		RAISERROR('%s - Error Number: %i',
			@ErrorSeverity, @ErrorState, @Message, @CustomError)
	END
	-- tratar de hacer todo lo posible antes de q inice la transaccion

	SET @InicieTransaccion = 0
	IF @@TRANCOUNT=0 BEGIN
		SET @InicieTransaccion = 1
		SET TRANSACTION ISOLATION LEVEL READ COMMITTED
		BEGIN TRANSACTION
	END

	BEGIN TRY
		SET @CustomError = 2001

		SET @BalanceOrigen = (SELECT TOP 1 MontoTotal FROM BalancesLogs WITH (TABLOCKX, HOLDLOCK) WHERE ProductorID = @OrigenID  ORDER BY PostTime DESC)
		SET @BalanceDestinatario = (SELECT TOP 1 MontoTotal FROM BalancesLogs WHERE ProductorID = @DestinatarioID ORDER BY PostTime DESC)
		IF @BalanceOrigen < @Monto BEGIN
			ROLLBACK
		END
		WAITFOR DELAY '00:00:15';

		INSERT INTO Transacciones (OrigenID, DestinatarioID, MonedaID, Monto, PostTime, IPAddress, Username, Checksum) VALUES
		(@OrigenID, @DestinatarioID, @MonedaID, @Monto, SYSUTCDATETIME(), '127.0.0.1', 'Luis', CHECKSUM(@OrigenID, @DestinatarioID, @MonedaID, @Monto, SYSUTCDATETIME(), '127.0.0.1', 'Luis'));

		SET @TransID = (SELECT @@IDENTITY)

		INSERT INTO BalancesLogs (MonedaID, MontoTotal, MontoAñadido, PostTime, IPAddress, Username, TipoDeCambioID, ProductorID, TransaccionID, Cheksum) VALUES
		(@MonedaID, @BalanceOrigen - @Monto, @Monto * -1, SYSUTCDATETIME(), '127.0.0.1', 'Luis', @TipoDeCambioID, @OrigenID, @TransID, CHECKSUM(@MonedaID, @BalanceOrigen - @Monto, @Monto * -1, SYSUTCDATETIME(), '127.0.0.1', 'Luis', @TipoDeCambioID, @OrigenID, @TransID));

		

		INSERT INTO BalancesLogs (MonedaID, MontoTotal, MontoAñadido, PostTime, IPAddress, Username, TipoDeCambioID, ProductorID, TransaccionID, Cheksum) VALUES
		(@MonedaID, @BalanceDestinatario + @Monto, @Monto, SYSUTCDATETIME(), '127.0.0.1', 'Luis', @TipoDeCambioID, @DestinatarioID, @TransID, CHECKSUM(@MonedaID, @BalanceDestinatario + @Monto, @Monto, SYSUTCDATETIME(), '127.0.0.1', 'Luis', @TipoDeCambioID, @DestinatarioID, @TransID));
		

		IF @InicieTransaccion=1 BEGIN
			COMMIT
		END
	END TRY
	BEGIN CATCH
		SET @ErrorNumber = ERROR_NUMBER()
		SET @ErrorSeverity = ERROR_SEVERITY()
		SET @ErrorState = ERROR_STATE()
		SET @Message = ERROR_MESSAGE()

		IF @InicieTransaccion=1 BEGIN
			ROLLBACK
		END
		RAISERROR('%s - Error Number: %i',
			@ErrorSeverity, @ErrorState, @Message, @CustomError)
	END CATCH
END
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[EVSP_SelectRecipientesLogs]    Script Date: 6/7/2023 5:08:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EVSP_SelectRecipientesLogs]
AS
    SELECT * FROM RecipientesLogs;
    RETURN
GO
/****** Object:  StoredProcedure [dbo].[SP_AgregarCicloContrato]    Script Date: 6/7/2023 5:08:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--CREATE PROCEDURE [dbo].[SP_AgregarCicloContrato]
--	@TVPContrato NuevoContrato READONLY,
--	@Inicio DATETIME2(7),
--	@Frecuencia INT,
--	@LocalProductorID INT,
--	@LocalProductorXContratoID INT
--AS 
--BEGIN
	
--	SET NOCOUNT ON
	
--	DECLARE @ErrorNumber INT, @ErrorSeverity INT, @ErrorState INT, @CustomError INT
--	DECLARE @Message VARCHAR(200)
--	DECLARE @InicieTransaccion BIT
--	DECLARE @ContratoID INT

--	SET @InicieTransaccion = 0
--	IF @@TRANCOUNT=0 BEGIN
--		SET @InicieTransaccion = 1
--		SET TRANSACTION ISOLATION LEVEL READ COMMITTED
--		BEGIN TRANSACTION		
--	END
	
--	BEGIN TRY
--		SET @CustomError = 2001

--		INSERT INTO Contratos SELECT InicioVigencia, FinalVigencia, ProductorID, CostoMensual, MonedaID, TipoDeCambioID 
--		FROM @TVPContrato
--		SET @ContratoID = @@IDENTITY
--		INSERT INTO CiclosDeRecoleccion (Inicio, Frecuencia, ContratoID, LocalProductorID, LocalProductorXContratoID)
--		VALUES (@Inicio, @Frecuencia, @ContratoID, @LocalProductorID, @LocalProductorXContratoID)

--		IF @InicieTransaccion=1 BEGIN
--			COMMIT
--		END
--	END TRY
--	BEGIN CATCH
--		SET @ErrorNumber = ERROR_NUMBER()
--		SET @ErrorSeverity = ERROR_SEVERITY()
--		SET @ErrorState = ERROR_STATE()
--		SET @Message = ERROR_MESSAGE()
		
--		IF @InicieTransaccion=1 BEGIN
--			ROLLBACK
--		END
--		RAISERROR('%s - Error Number: %i', 
--			@ErrorSeverity, @ErrorState, @Message, @CustomError)
--	END CATCH	
--END
--RETURN 0

--GO
--/****** Object:  StoredProcedure [dbo].[SP_RetornarCiclosDeLocal]    Script Date: 6/7/2023 5:08:16 PM ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO

--CREATE PROCEDURE [dbo].[SP_RetornarCiclosDeLocal]
--	@LocalProductorID  int,
--	@Fecha datetime2(7)
--AS 
--BEGIN
	
--	SET NOCOUNT ON
	
--	declare @cID ciclos

--	insert into @cID select CicloDeRecoleccionID, Inicio from CiclosDeRecoleccion where LocalProductorID = @LocalProductorID
--	-- select * from @cID

--	exec SP_ValidarDiaDeRecoleccion @Fecha, @cID
--END
--RETURN 0

--GO
--/****** Object:  StoredProcedure [dbo].[SP_RetornarResiduos]    Script Date: 6/7/2023 5:08:16 PM ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO

--CREATE PROCEDURE [dbo].[SP_RetornarResiduos]
--	@NombreProductor nchar(50),
--	@NombreRegion nchar(40),
--	@Fecha datetime2(7)
--AS 
--BEGIN
	
--	SET NOCOUNT ON
	
--	declare @pID int
--	declare @rID int
--	declare @uID ubicaciones_temp
--	declare @lpID locales_productores
--	declare @Temp int
--	declare @maxID int
--	declare @ubiID int
--	declare @localTemp int

--	select @pID = ProductorID from Productores where Nombre = 'KFC'	

--	select @rID = RegionID from Regiones where Nombre = 'San Jose Oeste'	

--	insert into @uID select UbicacionID from Ubicaciones where RegionID = @rID

--	set @Temp = 1

--	select @maxID = MAX(ID) from @uID

--	while (@Temp <= @maxID)
--	begin
--	select @ubiID = UbicacionID from @uID where ID = @Temp
--	insert into @lpID select LocalProductorID from LocalesProductores where ProductorID = @pID and UbicacionID = @ubiID
--	set @Temp = @Temp + 1
--	end

--	select * from @lpID

--	select @maxID = MAX(ID) from @lpID
--	set @Temp = 1

--	while (@Temp <= @maxID)
--	begin
--	select @localTemp = LocalProductorID from @lpID where ID = @Temp
--	exec SP_RetornarCiclosDeLocal @localTemp, @Fecha
--	set @Temp = @Temp + 1
--	end

--END
--RETURN 0

--GO
--/****** Object:  StoredProcedure [dbo].[SP_ValidarDiaDeRecoleccion]    Script Date: 6/7/2023 5:08:16 PM ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO

--CREATE PROCEDURE [dbo].[SP_ValidarDiaDeRecoleccion]
--	@Fecha datetime2(7),
--	@cID ciclos readonly
--AS 
--BEGIN
	
--	SET NOCOUNT ON

--	declare @maxID int
--	declare @Temp int
--	declare @dateTemp datetime2(7)
--	declare @idTemp int
--	declare @ciclosEnFecha CicloEnFecha
--	declare @cicloTemp int

--	select @maxID = MAX(ID) from @cID
--	set @Temp = 1

--	while (@Temp <= @maxID)
--	begin
--	select @dateTemp = Inicio, @idTemp = CicloDeRecoleccionID from @cID where ID = @Temp
--	if datediff (day, CONVERT(datetime2(7), @dateTemp), @Fecha)%7 = 0 
--	insert into @ciclosEnFecha select CicloDeRecoleccionID from @cID where CicloDeRecoleccionID = @idTemp
--	set @Temp = @Temp + 1
--	end

--	-- select * from @ciclosEnFecha

--	select @maxID = MAX(ID) from @ciclosEnFecha
--	set @Temp = 1

--	while (@Temp <= @maxID)
--	begin
--	select @cicloTemp = CicloDeRecoleccionID from @ciclosEnFecha where ID = @Temp
--	exec SP_RetornarVolumenesXCiclo @cicloTemp
--	set @Temp = @Temp + 1
--	end

--END
--RETURN 0

--GO
/****** Object:  StoredProcedure [dbo].[SP_VerTipoRecipientesLogs]    Script Date: 6/7/2023 5:08:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_VerTipoRecipientesLogs]
    @Accion varchar(30)
AS
    SET NOCOUNT ON;
    DECLARE @AccionID INT;

    SET @AccionID = (SELECT AccionRecipienteID FROM AccionesRecipientes WHERE Descripcion = @Accion)

    IF @AccionID IS NULL BEGIN
		RETURN 1
	END

    SELECT RL.Hora, RL.TipoRecipienteID, RL.LocalID, AR.Descripcion, ResiduoID
    FROM RecipientesLogs RL
    INNER JOIN AccionesRecipientes AR on RL.AccionRecipienteID = AR.AccionRecipienteID
    WHERE AR.AccionRecipienteID = @AccionID;
    RETURN
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Calidad del 1-5, de su estado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CalidadesRecipientesLogs', @level2type=N'COLUMN',@level2name=N'CalidadRecipienteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1:Tarjeta, 2:Efectivo, 3:Sinpe' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ventas', @level2type=N'COLUMN',@level2name=N'TipoDePagoID'
GO
USE [master]
GO
ALTER DATABASE [esencialVerde] SET  READ_WRITE 
GO
