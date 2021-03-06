/****** NOMBRE:Jesus Gabriel Geronimo Liburd  MATRICULA:20-2IIT-1-036 SECCION:0541 ******/
USE [master]
GO
/****** Object:  Database [CarlosVaper]    Script Date: 17/04/2022 13:18:14 ******/
CREATE DATABASE [CarlosVaper]

USE [CarlosVaper]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 17/04/2022 13:18:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientes](
	[ClientesID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Edad] [varchar](3) NOT NULL,
	[Cedula] [varchar](13) NULL,
PRIMARY KEY CLUSTERED 
(
	[ClientesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 17/04/2022 13:18:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[EmpleadosID] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](20) NOT NULL,
	[Edad] [varchar](3) NOT NULL,
	[Sexo] [varchar](1) NOT NULL,
	[FchaNacimiento] [date] NOT NULL,
	[cedula] [varchar](13) NOT NULL,
	[Sueldo] [decimal](7, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpleadosID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productos]    Script Date: 17/04/2022 13:18:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productos](
	[ProductosID] [int] IDENTITY(1,1) NOT NULL,
	[Liquidos] [varchar](50) NOT NULL,
	[Precio] [decimal](5, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductosID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productos2]    Script Date: 17/04/2022 13:18:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productos2](
	[Productos2ID] [int] IDENTITY(1,1) NOT NULL,
	[vapers] [varchar](50) NOT NULL,
	[Precio] [decimal](5, 2) NOT NULL,
	[Nuevos] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Productos2ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ventas]    Script Date: 17/04/2022 13:18:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ventas](
	[VentasID] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdProductos] [int] NOT NULL,
	[IdProductos2] [int] NOT NULL,
	[IdEmpleados] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[VentasID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[clientes] ON 

INSERT [dbo].[clientes] ([ClientesID], [Nombre], [Edad], [Cedula]) VALUES (1, N'Carlos ', N'19', N'35435345')
INSERT [dbo].[clientes] ([ClientesID], [Nombre], [Edad], [Cedula]) VALUES (2, N'Marlon', N'20', N'24234324')
INSERT [dbo].[clientes] ([ClientesID], [Nombre], [Edad], [Cedula]) VALUES (3, N'Carla', N'25', N'86578869')
INSERT [dbo].[clientes] ([ClientesID], [Nombre], [Edad], [Cedula]) VALUES (4, N'Eduard', N'30', N'54646654')
INSERT [dbo].[clientes] ([ClientesID], [Nombre], [Edad], [Cedula]) VALUES (5, N'Edwin', N'32', N'86323424')
INSERT [dbo].[clientes] ([ClientesID], [Nombre], [Edad], [Cedula]) VALUES (6, N'Leidy', N'25', N'98436343')
INSERT [dbo].[clientes] ([ClientesID], [Nombre], [Edad], [Cedula]) VALUES (7, N'Sharlot', N'32', N'65768800')
INSERT [dbo].[clientes] ([ClientesID], [Nombre], [Edad], [Cedula]) VALUES (8, N'pedro', N'38', N'45656656')
INSERT [dbo].[clientes] ([ClientesID], [Nombre], [Edad], [Cedula]) VALUES (9, N'marta', N'27', N'53456823')
INSERT [dbo].[clientes] ([ClientesID], [Nombre], [Edad], [Cedula]) VALUES (10, N'fran', N'54', N'32428782')
SET IDENTITY_INSERT [dbo].[clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Empleados] ON 

INSERT [dbo].[Empleados] ([EmpleadosID], [Nombres], [Edad], [Sexo], [FchaNacimiento], [cedula], [Sueldo]) VALUES (1, N'Jose Matos', N'20', N'M', CAST(N'2002-04-02' AS Date), N'328329', CAST(20000.00 AS Decimal(7, 2)))
INSERT [dbo].[Empleados] ([EmpleadosID], [Nombres], [Edad], [Sexo], [FchaNacimiento], [cedula], [Sueldo]) VALUES (4, N'Marta Germosen', N'21', N'F', CAST(N'2001-06-03' AS Date), N'324323', CAST(20000.00 AS Decimal(7, 2)))
INSERT [dbo].[Empleados] ([EmpleadosID], [Nombres], [Edad], [Sexo], [FchaNacimiento], [cedula], [Sueldo]) VALUES (6, N'Marcos Lewis', N'25', N'M', CAST(N'1997-04-05' AS Date), N'879879', CAST(20000.00 AS Decimal(7, 2)))
INSERT [dbo].[Empleados] ([EmpleadosID], [Nombres], [Edad], [Sexo], [FchaNacimiento], [cedula], [Sueldo]) VALUES (9, N'Sarah Geronimo ', N'27', N'F', CAST(N'1995-05-03' AS Date), N'984393', CAST(20000.00 AS Decimal(7, 2)))
INSERT [dbo].[Empleados] ([EmpleadosID], [Nombres], [Edad], [Sexo], [FchaNacimiento], [cedula], [Sueldo]) VALUES (11, N'Raudin Lara ', N'30', N'M', CAST(N'1988-05-04' AS Date), N'435973', CAST(20000.00 AS Decimal(7, 2)))
INSERT [dbo].[Empleados] ([EmpleadosID], [Nombres], [Edad], [Sexo], [FchaNacimiento], [cedula], [Sueldo]) VALUES (12, N'Rachel Genao', N'28', N'M', CAST(N'1900-05-09' AS Date), N'353245', CAST(20000.00 AS Decimal(7, 2)))
INSERT [dbo].[Empleados] ([EmpleadosID], [Nombres], [Edad], [Sexo], [FchaNacimiento], [cedula], [Sueldo]) VALUES (14, N'Marta breton ', N'19', N'F', CAST(N'2003-05-06' AS Date), N'234323', CAST(20000.00 AS Decimal(7, 2)))
SET IDENTITY_INSERT [dbo].[Empleados] OFF
GO
SET IDENTITY_INSERT [dbo].[productos] ON 

INSERT [dbo].[productos] ([ProductosID], [Liquidos], [Precio]) VALUES (1, N'Mango', CAST(700.00 AS Decimal(5, 2)))
INSERT [dbo].[productos] ([ProductosID], [Liquidos], [Precio]) VALUES (2, N'Uva ', CAST(700.00 AS Decimal(5, 2)))
INSERT [dbo].[productos] ([ProductosID], [Liquidos], [Precio]) VALUES (3, N'Mango Fresa', CAST(800.00 AS Decimal(5, 2)))
INSERT [dbo].[productos] ([ProductosID], [Liquidos], [Precio]) VALUES (4, N'tabaco', CAST(150.00 AS Decimal(5, 2)))
INSERT [dbo].[productos] ([ProductosID], [Liquidos], [Precio]) VALUES (5, N'Sandia', CAST(600.00 AS Decimal(5, 2)))
INSERT [dbo].[productos] ([ProductosID], [Liquidos], [Precio]) VALUES (6, N'Fresa', CAST(600.00 AS Decimal(5, 2)))
INSERT [dbo].[productos] ([ProductosID], [Liquidos], [Precio]) VALUES (7, N'Piña ', CAST(600.00 AS Decimal(5, 2)))
INSERT [dbo].[productos] ([ProductosID], [Liquidos], [Precio]) VALUES (8, N'Menta', CAST(150.00 AS Decimal(5, 2)))
INSERT [dbo].[productos] ([ProductosID], [Liquidos], [Precio]) VALUES (9, N'Sandia con ice ', CAST(800.00 AS Decimal(5, 2)))
INSERT [dbo].[productos] ([ProductosID], [Liquidos], [Precio]) VALUES (10, N'Fresa con ice', CAST(800.00 AS Decimal(5, 2)))
SET IDENTITY_INSERT [dbo].[productos] OFF
GO
SET IDENTITY_INSERT [dbo].[productos2] ON 

INSERT [dbo].[productos2] ([Productos2ID], [vapers], [Precio], [Nuevos]) VALUES (4, N'VaporessoTarget', CAST(999.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[productos2] ([Productos2ID], [vapers], [Precio], [Nuevos]) VALUES (5, N'NULLAspireZeroG', CAST(999.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[productos2] ([Productos2ID], [vapers], [Precio], [Nuevos]) VALUES (6, N'VaporessoSwagII', CAST(999.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[productos2] ([Productos2ID], [vapers], [Precio], [Nuevos]) VALUES (7, N'VoopooDrag3', CAST(999.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[productos2] ([Productos2ID], [vapers], [Precio], [Nuevos]) VALUES (8, N'NULLVaporessoForzTX80', CAST(999.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[productos2] ([Productos2ID], [vapers], [Precio], [Nuevos]) VALUES (10, N'VaporessoLuxe', CAST(999.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[productos2] ([Productos2ID], [vapers], [Precio], [Nuevos]) VALUES (11, N'VoopooArgusGt ', CAST(999.90 AS Decimal(5, 2)), 1)
INSERT [dbo].[productos2] ([Productos2ID], [vapers], [Precio], [Nuevos]) VALUES (12, N'CaliburnG', CAST(600.00 AS Decimal(5, 2)), 1)
SET IDENTITY_INSERT [dbo].[productos2] OFF
GO
SET IDENTITY_INSERT [dbo].[ventas] ON 

INSERT [dbo].[ventas] ([VentasID], [IdCliente], [IdProductos], [IdProductos2], [IdEmpleados], [Fecha]) VALUES (1, 1, 2, 4, 4, CAST(N'2022-05-02' AS Date))
INSERT [dbo].[ventas] ([VentasID], [IdCliente], [IdProductos], [IdProductos2], [IdEmpleados], [Fecha]) VALUES (4, 3, 5, 6, 6, CAST(N'2022-05-03' AS Date))
INSERT [dbo].[ventas] ([VentasID], [IdCliente], [IdProductos], [IdProductos2], [IdEmpleados], [Fecha]) VALUES (5, 7, 6, 7, 6, CAST(N'2022-05-06' AS Date))
INSERT [dbo].[ventas] ([VentasID], [IdCliente], [IdProductos], [IdProductos2], [IdEmpleados], [Fecha]) VALUES (6, 5, 5, 6, 4, CAST(N'2022-05-06' AS Date))
SET IDENTITY_INSERT [dbo].[ventas] OFF
GO
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD  CONSTRAINT [Fk_Cliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[clientes] ([ClientesID])
GO
ALTER TABLE [dbo].[ventas] CHECK CONSTRAINT [Fk_Cliente]
GO
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD  CONSTRAINT [Fk_Empleados] FOREIGN KEY([IdEmpleados])
REFERENCES [dbo].[Empleados] ([EmpleadosID])
GO
ALTER TABLE [dbo].[ventas] CHECK CONSTRAINT [Fk_Empleados]
GO
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD  CONSTRAINT [Fk_Productos] FOREIGN KEY([IdProductos])
REFERENCES [dbo].[productos] ([ProductosID])
GO
ALTER TABLE [dbo].[ventas] CHECK CONSTRAINT [Fk_Productos]
GO
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD  CONSTRAINT [Fk_Productos2] FOREIGN KEY([IdProductos2])
REFERENCES [dbo].[productos2] ([Productos2ID])
GO
ALTER TABLE [dbo].[ventas] CHECK CONSTRAINT [Fk_Productos2]
GO
USE [master]
GO
ALTER DATABASE [CarlosVaper] SET  READ_WRITE 
GO
