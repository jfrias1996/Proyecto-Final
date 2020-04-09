

/****** Nombre: Jose Alberto Frias Rosa   Matricula: 18-MIIN-1-058   Seccion: 0541 ******/

/****** Object:  Database [Instituto]    Script Date: 7/4/2020 8:51:36 p.m. ******/
CREATE DATABASE [InstitutoEducacionContinuada]
GO
USE [InstitutoEducacionContinuada]
GO
/****** Object:  Table [dbo].[Areas]    Script Date: 7/4/2020 8:51:36 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Areas](
	[AreaID] [int] NOT NULL,
	[Descripcion] [varchar](40) NULL,
	[SubArea] [varchar](25) NULL,
	[Edificio] [nchar](1) NULL,
 CONSTRAINT [PK_Areas] PRIMARY KEY CLUSTERED 
(
	[AreaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Condiciones]    Script Date: 7/4/2020 8:51:36 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Condiciones](
	[CondicionID] [int] NOT NULL,
	[EstudianteID] [varchar](8) NOT NULL,
	[CalificacionFinal] [int] NULL,
	[Condicion] [varchar](10) NULL,
 CONSTRAINT [PK_Estados] PRIMARY KEY CLUSTERED 
(
	[CondicionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cursos]    Script Date: 7/4/2020 8:51:36 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cursos](
	[CursoID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Prerrequisito] [smallint] NULL,
	[DuracionHoras] [tinyint] NULL,
	[Costo] [money] NULL,
 CONSTRAINT [PK_Curso] PRIMARY KEY CLUSTERED 
(
	[CursoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiantes]    Script Date: 7/4/2020 8:51:36 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiantes](
	[EstudianteID] [varchar](8) NOT NULL,
	[Nombre] [varchar](15) NOT NULL,
	[Apellidos] [varchar](30) NOT NULL,
	[Genero] [char](1) NULL,
	[Cedula] [int] NOT NULL,
	[Edad] [int] NULL,
	[FechaNacimiento] [date] NULL,
	[Telefono] [varchar](13) NULL,
	[Correo] [varchar](50) NULL,
	[SeccionID] [int] NULL,
	[Direccion/Provincia] [varchar](250) NULL,
 CONSTRAINT [PK_Estudiantes] PRIMARY KEY CLUSTERED 
(
	[EstudianteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profesores]    Script Date: 7/4/2020 8:51:36 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesores](
	[ProfesorID] [int] NOT NULL,
	[Nombre] [varchar](15) NOT NULL,
	[Apellidos] [varchar](30) NOT NULL,
	[Genero] [char](1) NOT NULL,
	[Cedula] [int] NOT NULL,
	[Edad] [int] NULL,
	[FechaNacimiento] [date] NULL,
	[Telefono] [varchar](13) NULL,
	[Correo] [varchar](50) NULL,
	[Direcccion] [varchar](250) NULL,
	[FechaInicio] [datetime] NULL,
	[Salario] [money] NULL,
 CONSTRAINT [PK_Profesores] PRIMARY KEY CLUSTERED 
(
	[ProfesorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Secciones]    Script Date: 7/4/2020 8:51:36 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Secciones](
	[SeccionID] [int] NOT NULL,
	[CursoID] [int] NOT NULL,
	[ProfesorID] [int] NOT NULL,
	[AreaID] [int] NOT NULL,
	[Aula] [varchar](8) NULL,
	[Dia] [varchar](50) NULL,
	[Horario] [varchar](50) NULL,
	[Cupos] [int] NULL,
	[Disponibles] [int] NULL,
 CONSTRAINT [PK_Secciones] PRIMARY KEY CLUSTERED 
(
	[SeccionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Areas] ([AreaID], [Descripcion], [SubArea], [Edificio]) VALUES (1, N'Idioma', N'Ingles', N'1')
INSERT [dbo].[Areas] ([AreaID], [Descripcion], [SubArea], [Edificio]) VALUES (2, N'Idioma', N'Frances', N'1')
INSERT [dbo].[Areas] ([AreaID], [Descripcion], [SubArea], [Edificio]) VALUES (3, N'Informatica', N'Software', N'1')
INSERT [dbo].[Areas] ([AreaID], [Descripcion], [SubArea], [Edificio]) VALUES (4, N'Informatica', N'Redes', N'2')
INSERT [dbo].[Areas] ([AreaID], [Descripcion], [SubArea], [Edificio]) VALUES (5, N'Informatica', N'Ofimatica', N'2')
INSERT [dbo].[Areas] ([AreaID], [Descripcion], [SubArea], [Edificio]) VALUES (6, N'Electronica', N'Controles', N'3')
INSERT [dbo].[Areas] ([AreaID], [Descripcion], [SubArea], [Edificio]) VALUES (7, N'Electronica', N'PLC', N'3')
INSERT [dbo].[Areas] ([AreaID], [Descripcion], [SubArea], [Edificio]) VALUES (8, N'Electronica', N'CAD', N'3')
INSERT [dbo].[Areas] ([AreaID], [Descripcion], [SubArea], [Edificio]) VALUES (9, N'Diseño', N'Multimedia', N'4')
INSERT [dbo].[Areas] ([AreaID], [Descripcion], [SubArea], [Edificio]) VALUES (10, N'Diseño', N'Cine', N'4')
INSERT [dbo].[Areas] ([AreaID], [Descripcion], [SubArea], [Edificio]) VALUES (11, N'Informatica', N'Online', NULL)
INSERT [dbo].[Areas] ([AreaID], [Descripcion], [SubArea], [Edificio]) VALUES (12, N'Ingenieria', N'Calidad', N'E')
INSERT [dbo].[Areas] ([AreaID], [Descripcion], [SubArea], [Edificio]) VALUES (13, N'Ingenieria', N'Produccion', N'E')
INSERT [dbo].[Areas] ([AreaID], [Descripcion], [SubArea], [Edificio]) VALUES (14, N'Ingenieria', N'Planificacion', N'E')
INSERT [dbo].[Areas] ([AreaID], [Descripcion], [SubArea], [Edificio]) VALUES (15, N'Ingenieria', N'Almacen', N'E')
INSERT [dbo].[Condiciones] ([CondicionID], [EstudianteID], [CalificacionFinal], [Condicion]) VALUES (1, N'20111223', 88, N'Aprobado')
INSERT [dbo].[Condiciones] ([CondicionID], [EstudianteID], [CalificacionFinal], [Condicion]) VALUES (2, N'20122232', 90, N'Aprobado')
INSERT [dbo].[Condiciones] ([CondicionID], [EstudianteID], [CalificacionFinal], [Condicion]) VALUES (3, N'20134522', 68, N'Reprobado')
INSERT [dbo].[Condiciones] ([CondicionID], [EstudianteID], [CalificacionFinal], [Condicion]) VALUES (4, N'20136651', 91, N'Aprobado')
INSERT [dbo].[Condiciones] ([CondicionID], [EstudianteID], [CalificacionFinal], [Condicion]) VALUES (5, N'20142215', 100, N'Aprobado')
INSERT [dbo].[Condiciones] ([CondicionID], [EstudianteID], [CalificacionFinal], [Condicion]) VALUES (6, N'20142475', 65, N'Reprobado')
INSERT [dbo].[Condiciones] ([CondicionID], [EstudianteID], [CalificacionFinal], [Condicion]) VALUES (7, N'20145512', 83, N'Aprobado')
INSERT [dbo].[Condiciones] ([CondicionID], [EstudianteID], [CalificacionFinal], [Condicion]) VALUES (8, N'20146658', 80, N'Aprobado')
INSERT [dbo].[Condiciones] ([CondicionID], [EstudianteID], [CalificacionFinal], [Condicion]) VALUES (9, N'20152311', 75, N'Aprobado')
INSERT [dbo].[Condiciones] ([CondicionID], [EstudianteID], [CalificacionFinal], [Condicion]) VALUES (10, N'20152622', 60, N'Reprobado')
INSERT [dbo].[Condiciones] ([CondicionID], [EstudianteID], [CalificacionFinal], [Condicion]) VALUES (11, N'20161654', 80, N'Aprobado')
INSERT [dbo].[Condiciones] ([CondicionID], [EstudianteID], [CalificacionFinal], [Condicion]) VALUES (12, N'20162011', 90, N'Aprobado')
INSERT [dbo].[Condiciones] ([CondicionID], [EstudianteID], [CalificacionFinal], [Condicion]) VALUES (13, N'20170251', 94, N'Aprobado')
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (1, N'Moodle', 211, 30, 5000.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (2, N'Excel Avanzado', 214, 40, 4000.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (101, N'Ingles 1', NULL, 80, 3500.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (102, N'Ingles 2', 101, 80, 3500.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (103, N'Ingles 3', 102, 80, 3500.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (104, N'Ingles avanzado', 103, 80, 4000.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (111, N'Frances basico', NULL, 80, 3000.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (112, N'Frances intermedio', 111, 80, 3500.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (121, N'Programacion basica', NULL, 50, 3000.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (122, N'Java', 121, 100, 6500.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (123, N'Base de datos', 121, 100, 5000.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (124, N'SQL', 123, 80, 8000.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (201, N'CCNA 1', NULL, 100, 8500.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (202, N'CCNA 2', 201, 100, 8500.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (203, N'CCNA 3', 202, 100, 8500.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (204, N'CCNA 4', 203, 100, 8500.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (205, N'Cableado estructurado', NULL, 50, 7000.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (211, N'Windows', NULL, 40, 2000.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (212, N'Word', 211, 40, 2500.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (213, N'Power Point', 211, 40, 2500.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (214, N'Excel', 211, 40, 2500.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (215, N'Excel avanzado', 214, 30, 3500.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (301, N'Controles Electicos', NULL, 80, 7000.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (302, N'Arduino', NULL, 80, 8000.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (303, N'Microprocesadores', NULL, 80, 8000.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (304, N'Electroneumatica', 301, 60, 6000.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (311, N'PLC Basico', 301, 80, 7000.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (321, N'Autocad basico', NULL, 50, 5000.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (322, N'Autocad 3D', 321, 40, 7000.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (323, N'Inventor', 321, 50, 7000.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (324, N'MasterCam', NULL, 50, 8000.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (401, N'Diseño Grafico', 402, 80, 9000.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (402, N'Photoshop', NULL, 80, 9000.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (403, N'Illustrator', NULL, 50, 9000.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (404, N'Comunicacion digital', NULL, 40, 10000.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (411, N'Actuacion', NULL, 40, 6000.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (412, N'Produccion Audiovisual', NULL, 40, 6000.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (501, N'ISO 9000', NULL, 25, 5000.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (502, N'Gestion de la Calidad', NULL, 25, 9000.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (503, N'Kaizen', NULL, 20, 2500.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (511, N'Indicadores de Produccion', NULL, 20, 2500.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (521, N'Planificacion de la produccion', NULL, 30, 9000.0000)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Prerrequisito], [DuracionHoras], [Costo]) VALUES (531, N'Gestion de Inventarios', NULL, 25, 5000.0000)
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Apellidos], [Genero], [Cedula], [Edad], [FechaNacimiento], [Telefono], [Correo], [SeccionID], [Direccion/Provincia]) VALUES (N'20111223', N'Luisa', N'Jiminez Nuñez', N'M', 1012556462, 30, CAST(N'1900-04-07' AS Date), N'809-500-4266', N'ljn04@hotmail.com', 5489, N'Santo Domingo')
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Apellidos], [Genero], [Cedula], [Edad], [FechaNacimiento], [Telefono], [Correo], [SeccionID], [Direccion/Provincia]) VALUES (N'20122232', N'Martin', N'Colome Hunt', N'M', 1651442356, 28, CAST(N'1992-01-22' AS Date), N'809-245-3556', N'mcolome@hotmail.com', 2265, N'Santo Domingo')
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Apellidos], [Genero], [Cedula], [Edad], [FechaNacimiento], [Telefono], [Correo], [SeccionID], [Direccion/Provincia]) VALUES (N'20134522', N'Jose Ismael', N'Rodriguez', N'M', 1332105257, 27, CAST(N'1992-10-14' AS Date), N'829-335-1933', N'jrodriguez263@hotmail.com', 6498, N'Santiago')
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Apellidos], [Genero], [Cedula], [Edad], [FechaNacimiento], [Telefono], [Correo], [SeccionID], [Direccion/Provincia]) VALUES (N'20136651', N'Jose', N'Augusto Matos', N'M', 2044893485, 23, CAST(N'1996-05-16' AS Date), N'849-222-3315', N'joseam02@outlook.com', 2265, N'Barahona')
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Apellidos], [Genero], [Cedula], [Edad], [FechaNacimiento], [Telefono], [Correo], [SeccionID], [Direccion/Provincia]) VALUES (N'20142215', N'Jose Alberto', N'Frias Rosa', N'M', 2122234896, 23, CAST(N'1996-11-17' AS Date), N'849-318-6641', N'jfrias1996@hotmail.com', 5616, N'Distrito Nacional')
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Apellidos], [Genero], [Cedula], [Edad], [FechaNacimiento], [Telefono], [Correo], [SeccionID], [Direccion/Provincia]) VALUES (N'20142475', N'Yendrick', N'Otaño Romero', N'M', 1812221698, 21, CAST(N'1998-12-02' AS Date), N'809-312-5514', N'yendrick@gmail.com', 5489, N'Santo Domingo')
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Apellidos], [Genero], [Cedula], [Edad], [FechaNacimiento], [Telefono], [Correo], [SeccionID], [Direccion/Provincia]) VALUES (N'20145512', N'Kelvin Ismael', N'Lugo Perez', N'M', 1401235256, 25, CAST(N'1994-11-11' AS Date), N'849-341-6999', N'klugo@yahoo.es', 1168, N'La Vega')
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Apellidos], [Genero], [Cedula], [Edad], [FechaNacimiento], [Telefono], [Correo], [SeccionID], [Direccion/Provincia]) VALUES (N'20146658', N'Yoira', N'Rosario Sanchez', N'F', 1224216985, 26, CAST(N'1994-01-18' AS Date), N'809-863-3415', N'ysanchez@gmail.com', 7954, N'San Pedro de Macoris')
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Apellidos], [Genero], [Cedula], [Edad], [FechaNacimiento], [Telefono], [Correo], [SeccionID], [Direccion/Provincia]) VALUES (N'20152311', N'Jorge Anthony', N'Medrano Perez', N'M', 1402553215, 22, CAST(N'1997-09-24' AS Date), N'809-141-1545', N'jorgeamp24@hotmail.com', 7954, N'Santo Domingo')
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Apellidos], [Genero], [Cedula], [Edad], [FechaNacimiento], [Telefono], [Correo], [SeccionID], [Direccion/Provincia]) VALUES (N'20152622', N'Gina Maria', N'Ferreira Lopez', N'F', 2143301656, 22, CAST(N'1997-11-05' AS Date), N'829-985-5546', N'gmfl@hotmail.es', 1688, N'Romana')
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Apellidos], [Genero], [Cedula], [Edad], [FechaNacimiento], [Telefono], [Correo], [SeccionID], [Direccion/Provincia]) VALUES (N'20161654', N'Alina Ysabel', N'Amaro Batista', N'F', 1513654826, 23, CAST(N'1997-04-13' AS Date), N'809-721-5482', N'aysabel@outlook.es', 5168, N'Samana')
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Apellidos], [Genero], [Cedula], [Edad], [FechaNacimiento], [Telefono], [Correo], [SeccionID], [Direccion/Provincia]) VALUES (N'20162011', N'Emilio', N'Espinal', N'M', 2033162244, 23, CAST(N'1996-07-28' AS Date), N'849-357-5123', N'emilioespinal@hotmail.com', 1688, N'Santo Domingo')
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Apellidos], [Genero], [Cedula], [Edad], [FechaNacimiento], [Telefono], [Correo], [SeccionID], [Direccion/Provincia]) VALUES (N'20170251', N'Luis Miguel', N'Perdomo', N'M', 1000654488, 21, CAST(N'1998-10-24' AS Date), N'809-407-7456', N'luisp2410@gmail.com', 1688, N'Santo Domingo')
INSERT [dbo].[Profesores] ([ProfesorID], [Nombre], [Apellidos], [Genero], [Cedula], [Edad], [FechaNacimiento], [Telefono], [Correo], [Direcccion], [FechaInicio], [Salario]) VALUES (1, N'Juan', N'Gutierrez', N'M', 1255485352, 55, CAST(N'1965-03-18' AS Date), N'809-157-1698', N'jgutierrez@edcontinuada.com', N'Los Tres Brazos', CAST(N'2017-01-12T12:00:00.000' AS DateTime), 22000.0000)
INSERT [dbo].[Profesores] ([ProfesorID], [Nombre], [Apellidos], [Genero], [Cedula], [Edad], [FechaNacimiento], [Telefono], [Correo], [Direcccion], [FechaInicio], [Salario]) VALUES (2, N'Rafael', N'Moreno', N'M', 2015563462, 43, CAST(N'1977-01-11' AS Date), N'849-345-0598', N'rmoreno@edcontinuada.com', N'Ensanche Ozama', CAST(N'2019-01-12T12:00:00.000' AS DateTime), 20000.0000)
INSERT [dbo].[Profesores] ([ProfesorID], [Nombre], [Apellidos], [Genero], [Cedula], [Edad], [FechaNacimiento], [Telefono], [Correo], [Direcccion], [FechaInicio], [Salario]) VALUES (3, N'Sandra', N'Ramos Torres', N'F', 1022475345, 49, CAST(N'1973-06-01' AS Date), N'829-249-3789', N'sramos@edcontinuada.com', N'Los Mina', CAST(N'2014-01-12T12:00:00.000' AS DateTime), 25000.0000)
INSERT [dbo].[Profesores] ([ProfesorID], [Nombre], [Apellidos], [Genero], [Cedula], [Edad], [FechaNacimiento], [Telefono], [Correo], [Direcccion], [FechaInicio], [Salario]) VALUES (4, N'Agustin', N'Frias Flores', N'M', 1122456378, 36, CAST(N'1983-12-18' AS Date), N'849-387-5219', N'afrias@edcontinuada.com', N'Ensanche Ozama', CAST(N'2016-01-12T12:00:00.000' AS DateTime), 23000.0000)
INSERT [dbo].[Profesores] ([ProfesorID], [Nombre], [Apellidos], [Genero], [Cedula], [Edad], [FechaNacimiento], [Telefono], [Correo], [Direcccion], [FechaInicio], [Salario]) VALUES (5, N'Yoandri', N'De la Rosa Santos', N'F', 1835469832, 38, CAST(N'1981-09-11' AS Date), N'829-324-3597', N'ydelarosa@edcontinuada.com', N'Ensanche la Fe', CAST(N'2013-01-12T12:00:00.000' AS DateTime), 26000.0000)
INSERT [dbo].[Profesores] ([ProfesorID], [Nombre], [Apellidos], [Genero], [Cedula], [Edad], [FechaNacimiento], [Telefono], [Correo], [Direcccion], [FechaInicio], [Salario]) VALUES (6, N'Gregoria', N'Caraballo', N'F', 1488695454, 52, CAST(N'1969-07-15' AS Date), N'809-967-7766', N'gcaraballo@edcontinuada.com', N'Los Casicazgos', CAST(N'2017-01-12T12:00:00.000' AS DateTime), 22000.0000)
INSERT [dbo].[Profesores] ([ProfesorID], [Nombre], [Apellidos], [Genero], [Cedula], [Edad], [FechaNacimiento], [Telefono], [Correo], [Direcccion], [FechaInicio], [Salario]) VALUES (7, N'Luisa', N'Zapata Baez', N'F', 1984201522, 48, CAST(N'1972-02-18' AS Date), N'849-769-8419', N'lzapata@edcontinuada.com', N'Villa Mella', CAST(N'2014-01-12T12:00:00.000' AS DateTime), 25000.0000)
INSERT [dbo].[Profesores] ([ProfesorID], [Nombre], [Apellidos], [Genero], [Cedula], [Edad], [FechaNacimiento], [Telefono], [Correo], [Direcccion], [FechaInicio], [Salario]) VALUES (8, N'Maria', N'Baez', N'F', 1265792789, 48, CAST(N'1972-03-03' AS Date), N'849-915-8819', N'mbaez@edcontinuada.com', N'Gazcue', CAST(N'2014-01-12T12:00:00.000' AS DateTime), 25000.0000)
INSERT [dbo].[Profesores] ([ProfesorID], [Nombre], [Apellidos], [Genero], [Cedula], [Edad], [FechaNacimiento], [Telefono], [Correo], [Direcccion], [FechaInicio], [Salario]) VALUES (9, N'Juan', N'Mendoza', N'M', 1245678903, 55, CAST(N'1965-02-12' AS Date), N'829-543-3123', N'jmendosa@edcontinuada.com', N'Villa Faro', CAST(N'2019-01-12T12:00:00.000' AS DateTime), 20000.0000)
INSERT [dbo].[Profesores] ([ProfesorID], [Nombre], [Apellidos], [Genero], [Cedula], [Edad], [FechaNacimiento], [Telefono], [Correo], [Direcccion], [FechaInicio], [Salario]) VALUES (10, N'Ana Maria', N'Encarnacion', N'F', 2012442532, 38, CAST(N'1981-07-01' AS Date), NULL, N'aencarnacion@edcontinuada.com', N'San Isidro', CAST(N'2019-01-12T12:00:00.000' AS DateTime), 20000.0000)
INSERT [dbo].[Secciones] ([SeccionID], [CursoID], [ProfesorID], [AreaID], [Aula], [Dia], [Horario], [Cupos], [Disponibles]) VALUES (1168, 502, 1, 12, N'4', N'Viernes', N'De 8:00am a 12:00pm', 10, 9)
INSERT [dbo].[Secciones] ([SeccionID], [CursoID], [ProfesorID], [AreaID], [Aula], [Dia], [Horario], [Cupos], [Disponibles]) VALUES (1534, 403, 10, 9, N'3', N'No Disponible', N'No Disponible', 15, 15)
INSERT [dbo].[Secciones] ([SeccionID], [CursoID], [ProfesorID], [AreaID], [Aula], [Dia], [Horario], [Cupos], [Disponibles]) VALUES (1688, 403, 2, 9, N'2', N'Martes', N'De 8:00am a 12:00pm', 15, 12)
INSERT [dbo].[Secciones] ([SeccionID], [CursoID], [ProfesorID], [AreaID], [Aula], [Dia], [Horario], [Cupos], [Disponibles]) VALUES (2265, 521, 6, 14, N'8', N'Viernes', N'De 8:00am a 12:00pm', 10, 8)
INSERT [dbo].[Secciones] ([SeccionID], [CursoID], [ProfesorID], [AreaID], [Aula], [Dia], [Horario], [Cupos], [Disponibles]) VALUES (5168, 111, 3, 2, N'9B', N'Lunes', N'De 8:00am a 12:00pm', 10, 9)
INSERT [dbo].[Secciones] ([SeccionID], [CursoID], [ProfesorID], [AreaID], [Aula], [Dia], [Horario], [Cupos], [Disponibles]) VALUES (5489, 304, 7, 6, N'4B', N'Miercoles', N'De 8:00am a 12:00pm', 15, 13)
INSERT [dbo].[Secciones] ([SeccionID], [CursoID], [ProfesorID], [AreaID], [Aula], [Dia], [Horario], [Cupos], [Disponibles]) VALUES (5616, 214, 4, 5, N'11', N'Jueves', N'De 8:00am a 12:00pm', 8, 7)
INSERT [dbo].[Secciones] ([SeccionID], [CursoID], [ProfesorID], [AreaID], [Aula], [Dia], [Horario], [Cupos], [Disponibles]) VALUES (6498, 101, 5, 1, N'13', N'Lunes', N'De 8:00am a 12:00pm', 10, 9)
INSERT [dbo].[Secciones] ([SeccionID], [CursoID], [ProfesorID], [AreaID], [Aula], [Dia], [Horario], [Cupos], [Disponibles]) VALUES (7665, 302, 9, 6, N'6', N'No Disponible', N'No Disponible', 8, 8)
INSERT [dbo].[Secciones] ([SeccionID], [CursoID], [ProfesorID], [AreaID], [Aula], [Dia], [Horario], [Cupos], [Disponibles]) VALUES (7954, 324, 8, 8, N'15', N'Miercoles', N'De 8:00am a 12:00pm', 10, 8)
ALTER TABLE [dbo].[Condiciones]  WITH CHECK ADD  CONSTRAINT [FK_Condiciones_Estudiantes] FOREIGN KEY([EstudianteID])
REFERENCES [dbo].[Estudiantes] ([EstudianteID])
GO
ALTER TABLE [dbo].[Condiciones] CHECK CONSTRAINT [FK_Condiciones_Estudiantes]
GO
ALTER TABLE [dbo].[Estudiantes]  WITH CHECK ADD  CONSTRAINT [FK_Estudiantes_Secciones1] FOREIGN KEY([SeccionID])
REFERENCES [dbo].[Secciones] ([SeccionID])
GO
ALTER TABLE [dbo].[Estudiantes] CHECK CONSTRAINT [FK_Estudiantes_Secciones1]
GO
ALTER TABLE [dbo].[Secciones]  WITH CHECK ADD  CONSTRAINT [FK_Secciones_Areas1] FOREIGN KEY([AreaID])
REFERENCES [dbo].[Areas] ([AreaID])
GO
ALTER TABLE [dbo].[Secciones] CHECK CONSTRAINT [FK_Secciones_Areas1]
GO
ALTER TABLE [dbo].[Secciones]  WITH CHECK ADD  CONSTRAINT [FK_Secciones_Cursos1] FOREIGN KEY([CursoID])
REFERENCES [dbo].[Cursos] ([CursoID])
GO
ALTER TABLE [dbo].[Secciones] CHECK CONSTRAINT [FK_Secciones_Cursos1]
GO
ALTER TABLE [dbo].[Secciones]  WITH CHECK ADD  CONSTRAINT [FK_Secciones_Profesores1] FOREIGN KEY([ProfesorID])
REFERENCES [dbo].[Profesores] ([ProfesorID])
GO
ALTER TABLE [dbo].[Secciones] CHECK CONSTRAINT [FK_Secciones_Profesores1]
GO
USE [master]
GO
ALTER DATABASE [InstitutoEducacionContinuada] SET  READ_WRITE 
GO
