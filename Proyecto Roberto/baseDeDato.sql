USE [master]
GO
/****** Object:  Database [DBSistemas_Digitales]    Script Date: 17/11/2017 19:40:48 ******/
CREATE DATABASE [DBSistemas_Digitales]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBSistemas_Digitales', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DBSistemas_Digitales.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DBSistemas_Digitales_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DBSistemas_Digitales_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DBSistemas_Digitales] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBSistemas_Digitales].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBSistemas_Digitales] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBSistemas_Digitales] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBSistemas_Digitales] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBSistemas_Digitales] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBSistemas_Digitales] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBSistemas_Digitales] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBSistemas_Digitales] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBSistemas_Digitales] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBSistemas_Digitales] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBSistemas_Digitales] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBSistemas_Digitales] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBSistemas_Digitales] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBSistemas_Digitales] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBSistemas_Digitales] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBSistemas_Digitales] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBSistemas_Digitales] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBSistemas_Digitales] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBSistemas_Digitales] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBSistemas_Digitales] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBSistemas_Digitales] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBSistemas_Digitales] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBSistemas_Digitales] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBSistemas_Digitales] SET RECOVERY FULL 
GO
ALTER DATABASE [DBSistemas_Digitales] SET  MULTI_USER 
GO
ALTER DATABASE [DBSistemas_Digitales] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBSistemas_Digitales] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBSistemas_Digitales] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBSistemas_Digitales] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DBSistemas_Digitales] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DBSistemas_Digitales', N'ON'
GO
USE [DBSistemas_Digitales]
GO
/****** Object:  Table [dbo].[Articulo]    Script Date: 17/11/2017 19:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Articulo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](50) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[idMedida] [int] NULL,
	[idColor] [int] NULL,
	[idEstilo] [int] NULL,
	[PrecioCosto] [float] NOT NULL,
	[PrecioVenta] [float] NOT NULL,
	[Existencia] [float] NOT NULL,
	[CantidadMin] [float] NOT NULL,
	[CantidadMax] [float] NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Articulo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 17/11/2017 19:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](200) NULL,
	[Apellidos] [varchar](200) NULL,
	[Direccion] [varchar](200) NULL,
	[Telefono] [varchar](200) NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Cliente] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Color]    Script Date: 17/11/2017 19:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Color](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Compra]    Script Date: 17/11/2017 19:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Compra](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FechaCompra] [datetime] NOT NULL,
	[idProveedor] [int] NOT NULL,
	[Nota] [varchar](100) NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Compra] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DetalleCompra]    Script Date: 17/11/2017 19:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DetalleCompra](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idMercancia] [int] NOT NULL,
	[TipoMercancia] [varchar](50) NOT NULL,
	[Cantidad] [float] NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_DetalleCompra] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DetalleFactura]    Script Date: 17/11/2017 19:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleFactura](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idFactura] [int] NOT NULL,
	[idProducto] [int] NULL,
	[CantidadProducto] [float] NULL,
	[idMaterial] [int] NULL,
	[CantidadMaterial] [float] NULL,
	[idArticulo] [int] NULL,
	[CantidadArticulo] [float] NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_DetalleFactura] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DetalleOrdenDeTrabajo]    Script Date: 17/11/2017 19:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleOrdenDeTrabajo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idOrdenDeTrabajo] [int] NOT NULL,
	[idProducto] [int] NULL,
	[CantidadProducto] [float] NULL,
	[idMaterial] [int] NULL,
	[CantidadMaterial] [float] NULL,
	[idArticulo] [int] NULL,
	[CantidadArticulo] [float] NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_DetalleOrdenDeTrabajo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Devolucion]    Script Date: 17/11/2017 19:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Devolucion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idMercancia] [int] NOT NULL,
	[TipoMercancia] [varchar](50) NOT NULL,
	[Cantidad] [float] NOT NULL,
	[Razon] [varchar](100) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Devolucion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 17/11/2017 19:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](200) NOT NULL,
	[Apellidos] [varchar](200) NOT NULL,
	[FechaNacimiento] [datetime] NOT NULL,
	[Direccion] [varchar](50) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Cedula] [varchar](50) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Entrada]    Script Date: 17/11/2017 19:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entrada](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idDevolucion] [int] NULL,
	[idDetalleCompra] [int] NULL,
	[idOrdenDeProduccion] [int] NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Entrada] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Estilo]    Script Date: 17/11/2017 19:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estilo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Estilo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 17/11/2017 19:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Factura](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idCliente] [int] NULL,
	[idEmpleado] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[idOrdenDeTrabajo] [int] NULL,
	[Notas] [varchar](200) NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Material]    Script Date: 17/11/2017 19:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Material](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Marca] [varchar](50) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[idUnidad] [int] NULL,
	[idMedida] [int] NULL,
	[idColor] [int] NULL,
	[PrecioCosto] [float] NOT NULL,
	[PrecioVenta] [float] NOT NULL,
	[Existencia] [float] NOT NULL,
	[DatosTecnicos] [varchar](200) NOT NULL,
	[CantidadMin] [float] NULL,
	[CantidadMax] [float] NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Medida]    Script Date: 17/11/2017 19:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Medida](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Medida] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Movimiento]    Script Date: 17/11/2017 19:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Movimiento](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FechaMovimiento] [datetime] NOT NULL,
	[idEntrada] [int] NULL,
	[idSalida] [int] NULL,
	[idAjusteManual] [int] NULL,
	[idOrdenDeProduccion] [int] NULL,
	[Nota] [varchar](100) NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Movimiento] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrdenDeProduccion]    Script Date: 17/11/2017 19:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrdenDeProduccion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idOrdenDeTrabajo] [int] NULL,
	[idMercancia] [int] NULL,
	[idTipoMercancia] [varchar](50) NULL,
	[Cantidad] [float] NOT NULL,
	[Nota] [varchar](100) NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_OrdenDeProduccion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrdenDeTrabajo]    Script Date: 17/11/2017 19:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrdenDeTrabajo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idCliente] [int] NOT NULL,
	[idEmpleado] [int] NOT NULL,
	[FechaRecibida] [datetime] NOT NULL,
	[FechaEntrega] [datetime] NOT NULL,
	[Notas] [varchar](200) NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_OrdenDeTrabajo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 17/11/2017 19:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[idMedida] [int] NULL,
	[idColor] [int] NULL,
	[idEstilo] [int] NULL,
	[PrecioCosto] [float] NOT NULL,
	[PrecioVenta] [float] NOT NULL,
	[Existencia] [float] NOT NULL,
	[CantidadMin] [float] NOT NULL,
	[CantidadMax] [float] NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 17/11/2017 19:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Direccion] [varchar](50) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Proveedor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Unidad]    Script Date: 17/11/2017 19:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Unidad](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Unidad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Articulo] ON 

INSERT [dbo].[Articulo] ([id], [Codigo], [Nombre], [idMedida], [idColor], [idEstilo], [PrecioCosto], [PrecioVenta], [Existencia], [CantidadMin], [CantidadMax], [Estado]) VALUES (3, N'123', N'articulo2', NULL, NULL, NULL, 0, 20, 30, 40, 50, 1)
INSERT [dbo].[Articulo] ([id], [Codigo], [Nombre], [idMedida], [idColor], [idEstilo], [PrecioCosto], [PrecioVenta], [Existencia], [CantidadMin], [CantidadMax], [Estado]) VALUES (4, N'465', N'articulo', NULL, NULL, NULL, 0, 20, 5, 3, 50, 1)
INSERT [dbo].[Articulo] ([id], [Codigo], [Nombre], [idMedida], [idColor], [idEstilo], [PrecioCosto], [PrecioVenta], [Existencia], [CantidadMin], [CantidadMax], [Estado]) VALUES (5, N'1423', N'Cuadro2', 1, 1, 1, 0, 20, 5, 1, 10, 1)
SET IDENTITY_INSERT [dbo].[Articulo] OFF
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([id], [Nombres], [Apellidos], [Direccion], [Telefono], [Estado]) VALUES (1, N'Roberto Joaquin', N'Torrez Luna', N'donde era', N'1234-5678', 1)
INSERT [dbo].[Cliente] ([id], [Nombres], [Apellidos], [Direccion], [Telefono], [Estado]) VALUES (6, N'segundo segundo', N'apellido apellido', N'direccion 2', N'1123-4578', 1)
SET IDENTITY_INSERT [dbo].[Cliente] OFF
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([id], [Nombre], [Estado]) VALUES (1, N'Rojo', 1)
INSERT [dbo].[Color] ([id], [Nombre], [Estado]) VALUES (2, N'Verde', 1)
SET IDENTITY_INSERT [dbo].[Color] OFF
SET IDENTITY_INSERT [dbo].[DetalleFactura] ON 

INSERT [dbo].[DetalleFactura] ([id], [idFactura], [idProducto], [CantidadProducto], [idMaterial], [CantidadMaterial], [idArticulo], [CantidadArticulo], [Estado]) VALUES (1, 7, NULL, NULL, NULL, NULL, 5, 2, 1)
INSERT [dbo].[DetalleFactura] ([id], [idFactura], [idProducto], [CantidadProducto], [idMaterial], [CantidadMaterial], [idArticulo], [CantidadArticulo], [Estado]) VALUES (2, 7, 2, 3, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DetalleFactura] ([id], [idFactura], [idProducto], [CantidadProducto], [idMaterial], [CantidadMaterial], [idArticulo], [CantidadArticulo], [Estado]) VALUES (3, 7, NULL, NULL, NULL, NULL, 4, 2, 1)
SET IDENTITY_INSERT [dbo].[DetalleFactura] OFF
SET IDENTITY_INSERT [dbo].[DetalleOrdenDeTrabajo] ON 

INSERT [dbo].[DetalleOrdenDeTrabajo] ([id], [idOrdenDeTrabajo], [idProducto], [CantidadProducto], [idMaterial], [CantidadMaterial], [idArticulo], [CantidadArticulo], [Estado]) VALUES (1, 4, NULL, NULL, NULL, NULL, 3, 1, 1)
INSERT [dbo].[DetalleOrdenDeTrabajo] ([id], [idOrdenDeTrabajo], [idProducto], [CantidadProducto], [idMaterial], [CantidadMaterial], [idArticulo], [CantidadArticulo], [Estado]) VALUES (2, 4, NULL, NULL, NULL, NULL, 4, 1, 1)
INSERT [dbo].[DetalleOrdenDeTrabajo] ([id], [idOrdenDeTrabajo], [idProducto], [CantidadProducto], [idMaterial], [CantidadMaterial], [idArticulo], [CantidadArticulo], [Estado]) VALUES (6, 6, NULL, NULL, NULL, NULL, 3, 1, 1)
INSERT [dbo].[DetalleOrdenDeTrabajo] ([id], [idOrdenDeTrabajo], [idProducto], [CantidadProducto], [idMaterial], [CantidadMaterial], [idArticulo], [CantidadArticulo], [Estado]) VALUES (7, 6, NULL, NULL, NULL, NULL, 4, 2, 1)
INSERT [dbo].[DetalleOrdenDeTrabajo] ([id], [idOrdenDeTrabajo], [idProducto], [CantidadProducto], [idMaterial], [CantidadMaterial], [idArticulo], [CantidadArticulo], [Estado]) VALUES (8, 6, 1, 4, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DetalleOrdenDeTrabajo] ([id], [idOrdenDeTrabajo], [idProducto], [CantidadProducto], [idMaterial], [CantidadMaterial], [idArticulo], [CantidadArticulo], [Estado]) VALUES (9, 6, 2, 1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DetalleOrdenDeTrabajo] ([id], [idOrdenDeTrabajo], [idProducto], [CantidadProducto], [idMaterial], [CantidadMaterial], [idArticulo], [CantidadArticulo], [Estado]) VALUES (10, 6, NULL, NULL, 1, 2, NULL, NULL, 1)
INSERT [dbo].[DetalleOrdenDeTrabajo] ([id], [idOrdenDeTrabajo], [idProducto], [CantidadProducto], [idMaterial], [CantidadMaterial], [idArticulo], [CantidadArticulo], [Estado]) VALUES (11, 6, NULL, NULL, 2, 1, NULL, NULL, 1)
INSERT [dbo].[DetalleOrdenDeTrabajo] ([id], [idOrdenDeTrabajo], [idProducto], [CantidadProducto], [idMaterial], [CantidadMaterial], [idArticulo], [CantidadArticulo], [Estado]) VALUES (12, 7, NULL, NULL, NULL, NULL, 3, 1, 1)
INSERT [dbo].[DetalleOrdenDeTrabajo] ([id], [idOrdenDeTrabajo], [idProducto], [CantidadProducto], [idMaterial], [CantidadMaterial], [idArticulo], [CantidadArticulo], [Estado]) VALUES (13, 7, 1, 1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DetalleOrdenDeTrabajo] ([id], [idOrdenDeTrabajo], [idProducto], [CantidadProducto], [idMaterial], [CantidadMaterial], [idArticulo], [CantidadArticulo], [Estado]) VALUES (16, 8, NULL, NULL, NULL, NULL, 3, 3, 1)
INSERT [dbo].[DetalleOrdenDeTrabajo] ([id], [idOrdenDeTrabajo], [idProducto], [CantidadProducto], [idMaterial], [CantidadMaterial], [idArticulo], [CantidadArticulo], [Estado]) VALUES (17, 8, NULL, NULL, 1, 1, NULL, NULL, 1)
INSERT [dbo].[DetalleOrdenDeTrabajo] ([id], [idOrdenDeTrabajo], [idProducto], [CantidadProducto], [idMaterial], [CantidadMaterial], [idArticulo], [CantidadArticulo], [Estado]) VALUES (19, 9, NULL, NULL, NULL, NULL, 4, 4, 1)
INSERT [dbo].[DetalleOrdenDeTrabajo] ([id], [idOrdenDeTrabajo], [idProducto], [CantidadProducto], [idMaterial], [CantidadMaterial], [idArticulo], [CantidadArticulo], [Estado]) VALUES (21, 9, 1, 1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DetalleOrdenDeTrabajo] ([id], [idOrdenDeTrabajo], [idProducto], [CantidadProducto], [idMaterial], [CantidadMaterial], [idArticulo], [CantidadArticulo], [Estado]) VALUES (22, 9, NULL, NULL, 1, 1, NULL, NULL, 1)
INSERT [dbo].[DetalleOrdenDeTrabajo] ([id], [idOrdenDeTrabajo], [idProducto], [CantidadProducto], [idMaterial], [CantidadMaterial], [idArticulo], [CantidadArticulo], [Estado]) VALUES (23, 9, NULL, NULL, NULL, NULL, 5, 1, 1)
SET IDENTITY_INSERT [dbo].[DetalleOrdenDeTrabajo] OFF
SET IDENTITY_INSERT [dbo].[Empleado] ON 

INSERT [dbo].[Empleado] ([id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Telefono], [Email], [Cedula], [Estado]) VALUES (1, N'emp', N'emp', CAST(N'1996-08-15 00:00:00.000' AS DateTime), N'direccion', N'1234-1234', N'email@email.com', N'441-4161165-879', 1)
INSERT [dbo].[Empleado] ([id], [Nombres], [Apellidos], [FechaNacimiento], [Direccion], [Telefono], [Email], [Cedula], [Estado]) VALUES (2, N'nom', N'ape', CAST(N'1990-08-17 00:00:00.000' AS DateTime), N'dir', N'1234-1234', N'email@email.com', N'4567-8974', 1)
SET IDENTITY_INSERT [dbo].[Empleado] OFF
SET IDENTITY_INSERT [dbo].[Estilo] ON 

INSERT [dbo].[Estilo] ([id], [Nombre], [Descripcion], [Estado]) VALUES (1, N'Sencillo', NULL, 1)
INSERT [dbo].[Estilo] ([id], [Nombre], [Descripcion], [Estado]) VALUES (2, N'estilos', N'desc', 1)
SET IDENTITY_INSERT [dbo].[Estilo] OFF
SET IDENTITY_INSERT [dbo].[Factura] ON 

INSERT [dbo].[Factura] ([id], [idCliente], [idEmpleado], [FechaCreacion], [idOrdenDeTrabajo], [Notas], [Estado]) VALUES (7, 1, 2, CAST(N'2017-10-03 00:00:00.000' AS DateTime), NULL, N'notas2', 1)
SET IDENTITY_INSERT [dbo].[Factura] OFF
SET IDENTITY_INSERT [dbo].[Material] ON 

INSERT [dbo].[Material] ([id], [Nombre], [Marca], [Descripcion], [idUnidad], [idMedida], [idColor], [PrecioCosto], [PrecioVenta], [Existencia], [DatosTecnicos], [CantidadMin], [CantidadMax], [Estado]) VALUES (1, N'material', N'marca', N'material descripcion', NULL, NULL, NULL, 10, 20, 30, N'datos tecnicos', 10, 50, 1)
INSERT [dbo].[Material] ([id], [Nombre], [Marca], [Descripcion], [idUnidad], [idMedida], [idColor], [PrecioCosto], [PrecioVenta], [Existencia], [DatosTecnicos], [CantidadMin], [CantidadMax], [Estado]) VALUES (2, N'material', N'mate', N'descrip', NULL, NULL, NULL, 12, 65, 89, N'datos', 12, 32, 1)
INSERT [dbo].[Material] ([id], [Nombre], [Marca], [Descripcion], [idUnidad], [idMedida], [idColor], [PrecioCosto], [PrecioVenta], [Existencia], [DatosTecnicos], [CantidadMin], [CantidadMax], [Estado]) VALUES (3, N'nombre2', N'marca', N'descripcion', 1, 1, 1, 10, 20, 5, N'datos', 5, 10, 1)
SET IDENTITY_INSERT [dbo].[Material] OFF
SET IDENTITY_INSERT [dbo].[Medida] ON 

INSERT [dbo].[Medida] ([id], [Nombre], [Descripcion], [Estado]) VALUES (1, N'11x17"', NULL, 1)
INSERT [dbo].[Medida] ([id], [Nombre], [Descripcion], [Estado]) VALUES (2, N'10x12', N'descripcionn', 1)
SET IDENTITY_INSERT [dbo].[Medida] OFF
SET IDENTITY_INSERT [dbo].[OrdenDeTrabajo] ON 

INSERT [dbo].[OrdenDeTrabajo] ([id], [idCliente], [idEmpleado], [FechaRecibida], [FechaEntrega], [Notas], [Estado]) VALUES (4, 1, 1, CAST(N'2017-09-12 00:00:00.000' AS DateTime), CAST(N'2017-09-13 00:00:00.000' AS DateTime), N'ssd', 1)
INSERT [dbo].[OrdenDeTrabajo] ([id], [idCliente], [idEmpleado], [FechaRecibida], [FechaEntrega], [Notas], [Estado]) VALUES (6, 6, 2, CAST(N'2017-09-14 00:00:00.000' AS DateTime), CAST(N'2017-09-15 00:00:00.000' AS DateTime), N'notas notas', 1)
INSERT [dbo].[OrdenDeTrabajo] ([id], [idCliente], [idEmpleado], [FechaRecibida], [FechaEntrega], [Notas], [Estado]) VALUES (7, 6, 2, CAST(N'2017-09-14 00:00:00.000' AS DateTime), CAST(N'2017-09-15 00:00:00.000' AS DateTime), N'editada2', 1)
INSERT [dbo].[OrdenDeTrabajo] ([id], [idCliente], [idEmpleado], [FechaRecibida], [FechaEntrega], [Notas], [Estado]) VALUES (8, 1, 1, CAST(N'2017-09-18 00:00:00.000' AS DateTime), CAST(N'2017-09-18 00:00:00.000' AS DateTime), N'yutfy', 1)
INSERT [dbo].[OrdenDeTrabajo] ([id], [idCliente], [idEmpleado], [FechaRecibida], [FechaEntrega], [Notas], [Estado]) VALUES (9, 6, 1, CAST(N'2017-09-20 00:00:00.000' AS DateTime), CAST(N'2017-09-21 00:00:00.000' AS DateTime), N'notas2', 1)
SET IDENTITY_INSERT [dbo].[OrdenDeTrabajo] OFF
SET IDENTITY_INSERT [dbo].[Producto] ON 

INSERT [dbo].[Producto] ([id], [Nombre], [idMedida], [idColor], [idEstilo], [PrecioCosto], [PrecioVenta], [Existencia], [CantidadMin], [CantidadMax], [Estado]) VALUES (1, N'producto', NULL, NULL, NULL, 10, 20, 30, 5, 50, 1)
INSERT [dbo].[Producto] ([id], [Nombre], [idMedida], [idColor], [idEstilo], [PrecioCosto], [PrecioVenta], [Existencia], [CantidadMin], [CantidadMax], [Estado]) VALUES (2, N'producto', NULL, NULL, NULL, 12, 32, 56, 89, 98, 1)
INSERT [dbo].[Producto] ([id], [Nombre], [idMedida], [idColor], [idEstilo], [PrecioCosto], [PrecioVenta], [Existencia], [CantidadMin], [CantidadMax], [Estado]) VALUES (3, N'producto2', 1, 1, 1, 10, 20, 5, 1, 10, 1)
SET IDENTITY_INSERT [dbo].[Producto] OFF
SET IDENTITY_INSERT [dbo].[Proveedor] ON 

INSERT [dbo].[Proveedor] ([id], [Nombre], [Direccion], [Telefono], [Email], [Estado]) VALUES (1, N'proveedro', N'direcicon', N'1334-1234', N'email@email.com', 1)
INSERT [dbo].[Proveedor] ([id], [Nombre], [Direccion], [Telefono], [Email], [Estado]) VALUES (2, N'proveedor', N'proveedor direcicon', N'1234-1234', N'email@email.com', 1)
SET IDENTITY_INSERT [dbo].[Proveedor] OFF
SET IDENTITY_INSERT [dbo].[Unidad] ON 

INSERT [dbo].[Unidad] ([id], [Nombre], [Descripcion], [Estado]) VALUES (1, N'CM', NULL, 1)
INSERT [dbo].[Unidad] ([id], [Nombre], [Descripcion], [Estado]) VALUES (3, N'mm', N'Milimetros', 1)
SET IDENTITY_INSERT [dbo].[Unidad] OFF
ALTER TABLE [dbo].[Articulo]  WITH CHECK ADD  CONSTRAINT [FK_Articulo_Color] FOREIGN KEY([idColor])
REFERENCES [dbo].[Color] ([id])
GO
ALTER TABLE [dbo].[Articulo] CHECK CONSTRAINT [FK_Articulo_Color]
GO
ALTER TABLE [dbo].[Articulo]  WITH CHECK ADD  CONSTRAINT [FK_Articulo_Estilo] FOREIGN KEY([idEstilo])
REFERENCES [dbo].[Estilo] ([id])
GO
ALTER TABLE [dbo].[Articulo] CHECK CONSTRAINT [FK_Articulo_Estilo]
GO
ALTER TABLE [dbo].[Articulo]  WITH CHECK ADD  CONSTRAINT [FK_Articulo_Medida] FOREIGN KEY([idMedida])
REFERENCES [dbo].[Medida] ([id])
GO
ALTER TABLE [dbo].[Articulo] CHECK CONSTRAINT [FK_Articulo_Medida]
GO
ALTER TABLE [dbo].[DetalleFactura]  WITH CHECK ADD  CONSTRAINT [FK_DetalleFactura_Articulo] FOREIGN KEY([idArticulo])
REFERENCES [dbo].[Articulo] ([id])
GO
ALTER TABLE [dbo].[DetalleFactura] CHECK CONSTRAINT [FK_DetalleFactura_Articulo]
GO
ALTER TABLE [dbo].[DetalleFactura]  WITH CHECK ADD  CONSTRAINT [FK_DetalleFactura_Factura] FOREIGN KEY([idFactura])
REFERENCES [dbo].[Factura] ([id])
GO
ALTER TABLE [dbo].[DetalleFactura] CHECK CONSTRAINT [FK_DetalleFactura_Factura]
GO
ALTER TABLE [dbo].[DetalleFactura]  WITH CHECK ADD  CONSTRAINT [FK_DetalleFactura_Material] FOREIGN KEY([idMaterial])
REFERENCES [dbo].[Material] ([id])
GO
ALTER TABLE [dbo].[DetalleFactura] CHECK CONSTRAINT [FK_DetalleFactura_Material]
GO
ALTER TABLE [dbo].[DetalleFactura]  WITH CHECK ADD  CONSTRAINT [FK_DetalleFactura_Producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto] ([id])
GO
ALTER TABLE [dbo].[DetalleFactura] CHECK CONSTRAINT [FK_DetalleFactura_Producto]
GO
ALTER TABLE [dbo].[DetalleOrdenDeTrabajo]  WITH CHECK ADD  CONSTRAINT [FK_DetalleOrdenDeTrabajo_Articulo] FOREIGN KEY([idArticulo])
REFERENCES [dbo].[Articulo] ([id])
GO
ALTER TABLE [dbo].[DetalleOrdenDeTrabajo] CHECK CONSTRAINT [FK_DetalleOrdenDeTrabajo_Articulo]
GO
ALTER TABLE [dbo].[DetalleOrdenDeTrabajo]  WITH CHECK ADD  CONSTRAINT [FK_DetalleOrdenDeTrabajo_Material] FOREIGN KEY([idMaterial])
REFERENCES [dbo].[Material] ([id])
GO
ALTER TABLE [dbo].[DetalleOrdenDeTrabajo] CHECK CONSTRAINT [FK_DetalleOrdenDeTrabajo_Material]
GO
ALTER TABLE [dbo].[DetalleOrdenDeTrabajo]  WITH CHECK ADD  CONSTRAINT [FK_DetalleOrdenDeTrabajo_OrdenDeTrabajo] FOREIGN KEY([idOrdenDeTrabajo])
REFERENCES [dbo].[OrdenDeTrabajo] ([id])
GO
ALTER TABLE [dbo].[DetalleOrdenDeTrabajo] CHECK CONSTRAINT [FK_DetalleOrdenDeTrabajo_OrdenDeTrabajo]
GO
ALTER TABLE [dbo].[DetalleOrdenDeTrabajo]  WITH CHECK ADD  CONSTRAINT [FK_DetalleOrdenDeTrabajo_Producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto] ([id])
GO
ALTER TABLE [dbo].[DetalleOrdenDeTrabajo] CHECK CONSTRAINT [FK_DetalleOrdenDeTrabajo_Producto]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([id])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Cliente]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Empleado] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleado] ([id])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Empleado]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_OrdenDeTrabajo] FOREIGN KEY([idOrdenDeTrabajo])
REFERENCES [dbo].[OrdenDeTrabajo] ([id])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_OrdenDeTrabajo]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_Color] FOREIGN KEY([idColor])
REFERENCES [dbo].[Color] ([id])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_Color]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_Medida] FOREIGN KEY([idMedida])
REFERENCES [dbo].[Medida] ([id])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_Medida]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_Unidad] FOREIGN KEY([idUnidad])
REFERENCES [dbo].[Unidad] ([id])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_Unidad]
GO
ALTER TABLE [dbo].[OrdenDeTrabajo]  WITH CHECK ADD  CONSTRAINT [FK_OrdenDeTrabajo_Cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([id])
GO
ALTER TABLE [dbo].[OrdenDeTrabajo] CHECK CONSTRAINT [FK_OrdenDeTrabajo_Cliente]
GO
ALTER TABLE [dbo].[OrdenDeTrabajo]  WITH CHECK ADD  CONSTRAINT [FK_OrdenDeTrabajo_Empleado] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleado] ([id])
GO
ALTER TABLE [dbo].[OrdenDeTrabajo] CHECK CONSTRAINT [FK_OrdenDeTrabajo_Empleado]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Color] FOREIGN KEY([idColor])
REFERENCES [dbo].[Color] ([id])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Color]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Estilo] FOREIGN KEY([idEstilo])
REFERENCES [dbo].[Estilo] ([id])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Estilo]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Medida] FOREIGN KEY([idMedida])
REFERENCES [dbo].[Medida] ([id])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Medida]
GO
USE [master]
GO
ALTER DATABASE [DBSistemas_Digitales] SET  READ_WRITE 
GO
