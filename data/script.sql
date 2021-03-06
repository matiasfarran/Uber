USE [master]
GO
/****** Object:  Database [GD1C2017]    Script Date: martes, 20 de junio de 2017 16:18:42 ******/
CREATE DATABASE [GD1C2017]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GD1C2017', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLSERVER2012\MSSQL\DATA\GD1C2017.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'GD1C2017_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLSERVER2012\MSSQL\DATA\GD1C2017_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [GD1C2017] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GD1C2017].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GD1C2017] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GD1C2017] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GD1C2017] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GD1C2017] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GD1C2017] SET ARITHABORT OFF 
GO
ALTER DATABASE [GD1C2017] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GD1C2017] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [GD1C2017] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GD1C2017] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GD1C2017] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GD1C2017] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GD1C2017] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GD1C2017] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GD1C2017] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GD1C2017] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GD1C2017] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GD1C2017] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GD1C2017] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GD1C2017] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GD1C2017] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GD1C2017] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GD1C2017] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GD1C2017] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GD1C2017] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GD1C2017] SET  MULTI_USER 
GO
ALTER DATABASE [GD1C2017] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GD1C2017] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GD1C2017] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GD1C2017] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [GD1C2017]
GO
/****** Object:  User [gd]    Script Date: martes, 20 de junio de 2017 16:18:42 ******/
CREATE USER [gd] FOR LOGIN [gd] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Auto]    Script Date: martes, 20 de junio de 2017 16:18:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Auto](
	[auto_codigo] [numeric](18, 0) NOT NULL,
	[auto_marca] [numeric](18, 0) NULL,
	[auto_modelo] [char](50) NULL,
	[auto_patente] [nvarchar](50) NULL,
	[auto_turno] [numeric](18, 0) NULL,
	[auto_chofer] [numeric](18, 0) NULL,
	[auto_inactivo] [bit] NULL,
 CONSTRAINT [PK_Auot] PRIMARY KEY CLUSTERED 
(
	[auto_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Auto_turno]    Script Date: martes, 20 de junio de 2017 16:18:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auto_turno](
	[auto] [numeric](18, 0) NOT NULL,
	[turno] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Auto_turno] PRIMARY KEY CLUSTERED 
(
	[auto] ASC,
	[turno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Chofer]    Script Date: martes, 20 de junio de 2017 16:18:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chofer](
	[chof_codigo] [numeric](18, 0) NOT NULL,
	[chof_usuario] [numeric](18, 0) NULL,
	[chof_nombre] [nchar](50) NULL,
	[chof_apellido] [nchar](50) NULL,
	[chof_dni] [nchar](50) NULL,
	[chof_direccion] [nchar](50) NULL,
	[chof_telefono] [nchar](50) NULL,
	[chof_email] [nchar](50) NULL,
	[chof_fechanacimiento] [date] NULL,
	[chof_inactivo] [bit] NULL,
 CONSTRAINT [PK_Chofer] PRIMARY KEY CLUSTERED 
(
	[chof_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cliente]    Script Date: martes, 20 de junio de 2017 16:18:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[clie_codigo] [numeric](18, 0) NOT NULL,
	[clie_usuario] [numeric](18, 0) NULL,
	[clie_nombre] [nvarchar](50) NULL,
	[clie_appellido] [nchar](50) NULL,
	[clie_dni] [numeric](18, 0) NOT NULL,
	[clie_email] [nvarchar](50) NULL,
	[clie_telefono] [nchar](50) NULL,
	[clie_direccion] [nvarchar](50) NULL,
	[clie_codpostal] [numeric](18, 0) NULL,
	[clie_fechanacimiento] [date] NULL,
	[clie_inactivo] [bit] NULL,
 CONSTRAINT [PK_Cliente_1] PRIMARY KEY CLUSTERED 
(
	[clie_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Factura]    Script Date: martes, 20 de junio de 2017 16:18:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[fact_codigo] [numeric](18, 0) NOT NULL,
	[fact_fechainicio] [date] NOT NULL,
	[fact_fechafin] [date] NOT NULL,
	[fact_importe] [numeric](18, 0) NOT NULL,
	[fact_cliente] [numeric](18, 0) NOT NULL,
	[fact_inactivo] [bit] NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[fact_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Funcion]    Script Date: martes, 20 de junio de 2017 16:18:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcion](
	[func_codigo] [numeric](18, 0) NOT NULL,
	[func_nombre] [nchar](10) NULL,
	[func_inactivo] [bit] NULL,
 CONSTRAINT [PK_Funcion] PRIMARY KEY CLUSTERED 
(
	[func_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Funcion_rol]    Script Date: martes, 20 de junio de 2017 16:18:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcion_rol](
	[rol] [numeric](18, 0) NOT NULL,
	[funcion] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Funcion_rol] PRIMARY KEY CLUSTERED 
(
	[rol] ASC,
	[funcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Itemfactura]    Script Date: martes, 20 de junio de 2017 16:18:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Itemfactura](
	[item_codigo] [numeric](18, 0) NOT NULL,
	[item_factura] [numeric](18, 0) NULL,
	[item_viaje] [numeric](18, 0) NULL,
	[item_precio] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Itemfactura] PRIMARY KEY CLUSTERED 
(
	[item_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rendicion]    Script Date: martes, 20 de junio de 2017 16:18:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rendicion](
	[rend_codigo] [numeric](18, 0) NOT NULL,
	[rend_numero] [numeric](18, 0) NULL,
	[rend_fecha] [date] NULL,
	[rend_importe] [numeric](18, 0) NULL,
	[rend_chofer] [numeric](18, 0) NOT NULL,
	[rend_turno] [numeric](18, 0) NOT NULL,
	[rend_inactivo] [bit] NULL,
 CONSTRAINT [PK_Rendicion] PRIMARY KEY CLUSTERED 
(
	[rend_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rol]    Script Date: martes, 20 de junio de 2017 16:18:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[rol_codigo] [numeric](18, 0) NOT NULL,
	[rol_nombre] [nchar](10) NULL,
	[rol_inactivo] [bit] NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[rol_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rolusuario]    Script Date: martes, 20 de junio de 2017 16:18:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rolusuario](
	[rxu_rol] [numeric](18, 0) NOT NULL,
	[rxu_usuario] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Rolusuario] PRIMARY KEY CLUSTERED 
(
	[rxu_rol] ASC,
	[rxu_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Turno]    Script Date: martes, 20 de junio de 2017 16:18:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turno](
	[turn_codigo] [numeric](18, 0) NOT NULL,
	[turn_horainicio] [date] NULL,
	[turn_horafin] [date] NULL,
	[turn_descripcion] [nchar](50) NULL,
	[turn_valorkm] [numeric](18, 0) NULL,
	[turn_presiobase] [numeric](18, 0) NULL,
	[turn_inactivo] [bit] NULL,
 CONSTRAINT [PK_Turno] PRIMARY KEY CLUSTERED 
(
	[turn_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuario]    Script Date: martes, 20 de junio de 2017 16:18:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[usua_codigo] [numeric](18, 0) NOT NULL,
	[usua_intentos] [numeric](18, 0) NULL,
	[usua_nombre] [nchar](10) NULL,
	[usua_contrasena] [numeric](18, 0) NULL,
	[usua_inactivo] [bit] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[usua_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Viaje]    Script Date: martes, 20 de junio de 2017 16:18:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Viaje](
	[viaj_codigo] [numeric](18, 0) NOT NULL,
	[viaj_cliente] [numeric](18, 0) NULL,
	[viaj_chofer] [numeric](18, 0) NULL,
	[viaj_auto] [numeric](18, 0) NULL,
	[viaj_cantkm] [numeric](18, 0) NULL,
	[viaj_fechainicio] [date] NULL,
	[viaj_fechafin] [date] NULL,
	[viaj_turno] [numeric](18, 0) NULL,
	[viaj_inactivo] [bit] NULL,
 CONSTRAINT [PK_Viaje] PRIMARY KEY CLUSTERED 
(
	[viaj_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Auto]  WITH CHECK ADD  CONSTRAINT [FK_Auto_Chofer] FOREIGN KEY([auto_chofer])
REFERENCES [dbo].[Chofer] ([chof_codigo])
GO
ALTER TABLE [dbo].[Auto] CHECK CONSTRAINT [FK_Auto_Chofer]
GO
ALTER TABLE [dbo].[Auto]  WITH CHECK ADD  CONSTRAINT [FK_Auto_Turno] FOREIGN KEY([auto_turno])
REFERENCES [dbo].[Turno] ([turn_codigo])
GO
ALTER TABLE [dbo].[Auto] CHECK CONSTRAINT [FK_Auto_Turno]
GO
ALTER TABLE [dbo].[Auto_turno]  WITH CHECK ADD  CONSTRAINT [FK_Auto_turno_Turno] FOREIGN KEY([turno])
REFERENCES [dbo].[Turno] ([turn_codigo])
GO
ALTER TABLE [dbo].[Auto_turno] CHECK CONSTRAINT [FK_Auto_turno_Turno]
GO
ALTER TABLE [dbo].[Chofer]  WITH CHECK ADD  CONSTRAINT [FK_Chofer_Usuario] FOREIGN KEY([chof_usuario])
REFERENCES [dbo].[Usuario] ([usua_codigo])
GO
ALTER TABLE [dbo].[Chofer] CHECK CONSTRAINT [FK_Chofer_Usuario]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Usuario] FOREIGN KEY([clie_usuario])
REFERENCES [dbo].[Usuario] ([usua_codigo])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Usuario]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Cliente1] FOREIGN KEY([fact_cliente])
REFERENCES [dbo].[Cliente] ([clie_codigo])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Cliente1]
GO
ALTER TABLE [dbo].[Funcion_rol]  WITH CHECK ADD  CONSTRAINT [FK_Funcion_rol_Funcion] FOREIGN KEY([funcion])
REFERENCES [dbo].[Funcion] ([func_codigo])
GO
ALTER TABLE [dbo].[Funcion_rol] CHECK CONSTRAINT [FK_Funcion_rol_Funcion]
GO
ALTER TABLE [dbo].[Funcion_rol]  WITH CHECK ADD  CONSTRAINT [FK_Funcion_rol_Rol] FOREIGN KEY([rol])
REFERENCES [dbo].[Rol] ([rol_codigo])
GO
ALTER TABLE [dbo].[Funcion_rol] CHECK CONSTRAINT [FK_Funcion_rol_Rol]
GO
ALTER TABLE [dbo].[Itemfactura]  WITH CHECK ADD  CONSTRAINT [FK_Itemfactura_Itemfactura] FOREIGN KEY([item_factura])
REFERENCES [dbo].[Factura] ([fact_codigo])
GO
ALTER TABLE [dbo].[Itemfactura] CHECK CONSTRAINT [FK_Itemfactura_Itemfactura]
GO
ALTER TABLE [dbo].[Rendicion]  WITH CHECK ADD  CONSTRAINT [FK_Rendicion_Chofer] FOREIGN KEY([rend_chofer])
REFERENCES [dbo].[Chofer] ([chof_codigo])
GO
ALTER TABLE [dbo].[Rendicion] CHECK CONSTRAINT [FK_Rendicion_Chofer]
GO
ALTER TABLE [dbo].[Rendicion]  WITH CHECK ADD  CONSTRAINT [FK_Rendicion_Turno] FOREIGN KEY([rend_turno])
REFERENCES [dbo].[Turno] ([turn_codigo])
GO
ALTER TABLE [dbo].[Rendicion] CHECK CONSTRAINT [FK_Rendicion_Turno]
GO
ALTER TABLE [dbo].[Rolusuario]  WITH CHECK ADD  CONSTRAINT [FK_Rolusuario_Rol] FOREIGN KEY([rxu_rol])
REFERENCES [dbo].[Rol] ([rol_codigo])
GO
ALTER TABLE [dbo].[Rolusuario] CHECK CONSTRAINT [FK_Rolusuario_Rol]
GO
ALTER TABLE [dbo].[Rolusuario]  WITH CHECK ADD  CONSTRAINT [FK_Rolusuario_Usuario] FOREIGN KEY([rxu_usuario])
REFERENCES [dbo].[Usuario] ([usua_codigo])
GO
ALTER TABLE [dbo].[Rolusuario] CHECK CONSTRAINT [FK_Rolusuario_Usuario]
GO
ALTER TABLE [dbo].[Viaje]  WITH CHECK ADD  CONSTRAINT [FK_Viaje_Chofer] FOREIGN KEY([viaj_chofer])
REFERENCES [dbo].[Chofer] ([chof_codigo])
GO
ALTER TABLE [dbo].[Viaje] CHECK CONSTRAINT [FK_Viaje_Chofer]
GO
ALTER TABLE [dbo].[Viaje]  WITH CHECK ADD  CONSTRAINT [FK_Viaje_Cliente] FOREIGN KEY([viaj_cliente])
REFERENCES [dbo].[Cliente] ([clie_codigo])
GO
ALTER TABLE [dbo].[Viaje] CHECK CONSTRAINT [FK_Viaje_Cliente]
GO
ALTER TABLE [dbo].[Viaje]  WITH CHECK ADD  CONSTRAINT [FK_Viaje_Turno] FOREIGN KEY([viaj_turno])
REFERENCES [dbo].[Turno] ([turn_codigo])
GO
ALTER TABLE [dbo].[Viaje] CHECK CONSTRAINT [FK_Viaje_Turno]
GO
USE [master]
GO
ALTER DATABASE [GD1C2017] SET  READ_WRITE 
GO
