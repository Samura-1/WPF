USE [master]
GO
/****** Object:  Database [Salon]    Script Date: 11.06.2021 3:17:07 ******/
CREATE DATABASE [Salon]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Salon', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLSERVER\MSSQL\DATA\Salon.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Salon_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLSERVER\MSSQL\DATA\Salon_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Salon] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Salon].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Salon] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Salon] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Salon] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Salon] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Salon] SET ARITHABORT OFF 
GO
ALTER DATABASE [Salon] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Salon] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Salon] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Salon] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Salon] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Salon] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Salon] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Salon] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Salon] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Salon] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Salon] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Salon] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Salon] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Salon] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Salon] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Salon] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Salon] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Salon] SET RECOVERY FULL 
GO
ALTER DATABASE [Salon] SET  MULTI_USER 
GO
ALTER DATABASE [Salon] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Salon] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Salon] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Salon] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Salon] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Salon] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Salon', N'ON'
GO
ALTER DATABASE [Salon] SET QUERY_STORE = OFF
GO
USE [Salon]
GO
/****** Object:  Table [dbo].[LIst]    Script Date: 11.06.2021 3:17:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LIst](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [int] NOT NULL,
 CONSTRAINT [PK_LIst] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 11.06.2021 3:17:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nchar](30) NOT NULL,
	[Description] [ntext] NULL,
	[Cost] [money] NOT NULL,
	[Img] [ntext] NULL,
	[IsActual] [bit] NOT NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 11.06.2021 3:17:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11.06.2021 3:17:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nchar](50) NOT NULL,
	[Password] [nchar](50) NOT NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([ID], [Title], [Description], [Cost], [Img], [IsActual]) VALUES (96, N'Левомицетин                   ', N'Метаболическое средство.', 44.0000, N'/Resources/23.jpg', 1)
INSERT [dbo].[Service] ([ID], [Title], [Description], [Cost], [Img], [IsActual]) VALUES (97, N'Далацин фосфат                ', N'Далацин фосфат — эффективное средство в виде таблеток, мази и вагинальных аппликаторов, назначается при развитии резинстентности бактерий к более слабым антибиотикам', 21.0000, N'/Resources/12.jpg', 0)
INSERT [dbo].[Service] ([ID], [Title], [Description], [Cost], [Img], [IsActual]) VALUES (98, N'Азитромицин                   ', N'Азитромицин — один из наиболее эффективных антибио...', 11.0000, N'/Resources/23.jpg', 1)
INSERT [dbo].[Service] ([ID], [Title], [Description], [Cost], [Img], [IsActual]) VALUES (99, N'Цефиксим                      ', N'Цефиксим — антибиотики в виде таблеток и суспензии...', 114.0000, N'/Resources/43.jpg', 0)
INSERT [dbo].[Service] ([ID], [Title], [Description], [Cost], [Img], [IsActual]) VALUES (100, N'Атф аденозинтрифосфат         ', N'Метаболическое ср-во.Мышечная дистрофия и атония,п…', 555.0000, N'/Resources/photo_es.jpg', 1)
INSERT [dbo].[Service] ([ID], [Title], [Description], [Cost], [Img], [IsActual]) VALUES (101, N'Глицин таблетки               ', N'Метаболический препарат. Глицин является регулятором обмена веществ, нормализует и активирует процессы защитного торможения в ЦНС', 434.0000, N'/Resources/1234.jpg', 1)
INSERT [dbo].[Service] ([ID], [Title], [Description], [Cost], [Img], [IsActual]) VALUES (102, N'Дибикор таблетки              ', N'Препарат комбинированного действия, главным действующим веществом которого является симбиоз ацетилсалициловой кислоты и парацетамола.', 12.0000, N'/Resources/3213.jpg', 1)
INSERT [dbo].[Service] ([ID], [Title], [Description], [Cost], [Img], [IsActual]) VALUES (103, N'Парацетамол                   ', N'Помимо противоаллергического, оказывает также противовоспалительное действие, включается в состав тройчатки – комбинации препаратов, используемых бригадами «скорой помощи» при неотложной терапии. ', 55.0000, N'/Resources/2341.jpg', 1)
INSERT [dbo].[Service] ([ID], [Title], [Description], [Cost], [Img], [IsActual]) VALUES (104, N'Цитрамон П                    ', N'Это средство эффективно почти при всех видах аллергии, быстро устраняет проявления сенной лихорадки, крапивницы, нейродермита, дерматита за счет подавления выброса гистамина. Также применяется для лечения мигреней, анорексии, кахексии. ', 89.0000, N'/Resources/upload/1551008356_screenshot_6.jpg', 1)
INSERT [dbo].[Service] ([ID], [Title], [Description], [Cost], [Img], [IsActual]) VALUES (105, N'Ибуклин                       ', N'«Ибуклин» ‒ уникальный препарат, основанный на действии парацетамола в сочетании с ибупрофеном. Чаще всего жаропонижающие лекарства имеют в составе только один из этих компонентов', 99.0000, N'/Resources/1516204023_ibukl.jpg', 1)
INSERT [dbo].[Service] ([ID], [Title], [Description], [Cost], [Img], [IsActual]) VALUES (106, N'Колдакт Флю Плюс              ', N'Метаболическое средство.', 13.0000, N'/Resources/1550624873_clipboard1-tile.jpg', 1)
INSERT [dbo].[Service] ([ID], [Title], [Description], [Cost], [Img], [IsActual]) VALUES (107, N'Перитол                       ', N'уникальный препарат, основанный на действии парацетамола в сочетании с ибупрофеном. Чаще всего жаропонижающие лекарства имеют в составе только один из этих компонентов', 44.0000, N'/Resources/peritol.jpg', 1)
INSERT [dbo].[Service] ([ID], [Title], [Description], [Cost], [Img], [IsActual]) VALUES (108, N'Диазолин                      ', N'Метаболическое средство.', 55.0000, N'/Resources/diazolin.jpg', 0)
INSERT [dbo].[Service] ([ID], [Title], [Description], [Cost], [Img], [IsActual]) VALUES (109, N'Димедрол                      ', N'Помимо противоаллергического, оказывает также противовоспалительное действие, включается в состав тройчатки – комбинации препаратов, используемых бригадами «скорой помощи» при неотложной терапии. ', 92.0000, N'/Resources/diazolin.jpg', 0)
INSERT [dbo].[Service] ([ID], [Title], [Description], [Cost], [Img], [IsActual]) VALUES (110, N'Тавегил                       ', N'Метаболическое средство.', 66.0000, N'/Resources/tavegil.jpg', 0)
INSERT [dbo].[Service] ([ID], [Title], [Description], [Cost], [Img], [IsActual]) VALUES (111, N'Натрия аденозинтрифосфат      ', N'Метаболическое средство.', 555.0000, N'/Resources/dsad.jpg', 1)
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([ID], [Status]) VALUES (1, N'Admin               ')
INSERT [dbo].[Status] ([ID], [Status]) VALUES (2, N'Guest               ')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [Login], [Password], [Status]) VALUES (1, N'Admin                                             ', N'Admin                                             ', 1)
INSERT [dbo].[Users] ([ID], [Login], [Password], [Status]) VALUES (2, N'Pasha                                             ', N'Pasha                                             ', 2)
INSERT [dbo].[Users] ([ID], [Login], [Password], [Status]) VALUES (3, N'Lena                                              ', N'Lena                                              ', 2)
INSERT [dbo].[Users] ([ID], [Login], [Password], [Status]) VALUES (4, N'Vika                                              ', N'Vika                                              ', 2)
INSERT [dbo].[Users] ([ID], [Login], [Password], [Status]) VALUES (5, N'Anya                                              ', N'Anya                                              ', 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[LIst]  WITH CHECK ADD  CONSTRAINT [FK_LIst_Users] FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[LIst] CHECK CONSTRAINT [FK_LIst_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Status] FOREIGN KEY([Status])
REFERENCES [dbo].[Status] ([ID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Status]
GO
USE [master]
GO
ALTER DATABASE [Salon] SET  READ_WRITE 
GO
