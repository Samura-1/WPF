USE [Dzhes-Erl'1]
GO
/****** Object:  Table [dbo].[LIst]    Script Date: 24.05.2023 17:03:49 ******/
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
/****** Object:  Table [dbo].[Service]    Script Date: 24.05.2023 17:03:49 ******/
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
	[cout] [int] NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 24.05.2023 17:03:49 ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 24.05.2023 17:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nchar](50) NOT NULL,
	[Password] [nchar](50) NOT NULL,
	[Status] [int] NULL,
	[name] [ntext] NULL,
	[second_name] [ntext] NULL,
	[phone] [nchar](10) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Service] ON 
GO
INSERT [dbo].[Service] ([ID], [Title], [Description], [Cost], [Img], [IsActual], [cout]) VALUES (96, N'Левомицетин                   ', N'Метаболическое средство.', 44.0000, N'/Resources/23.jpg', 1, 12)
GO
INSERT [dbo].[Service] ([ID], [Title], [Description], [Cost], [Img], [IsActual], [cout]) VALUES (97, N'Далацин фосфат                ', N'Далацин фосфат — эффективное средство в виде таблеток, мази и вагинальных аппликаторов, назначается при развитии резинстентности бактерий к более слабым антибиотикам', 21.0000, N'/Resources/12.jpg', 0, 0)
GO
INSERT [dbo].[Service] ([ID], [Title], [Description], [Cost], [Img], [IsActual], [cout]) VALUES (98, N'Азитромицин                   ', N'Азитромицин — один из наиболее эффективных антибио...', 11.0000, N'/Resources/23.jpg', 1, 122)
GO
INSERT [dbo].[Service] ([ID], [Title], [Description], [Cost], [Img], [IsActual], [cout]) VALUES (99, N'Цефиксим                      ', N'Цефиксим — антибиотики в виде таблеток и суспензии...', 114.0000, N'/Resources/43.jpg', 0, 0)
GO
INSERT [dbo].[Service] ([ID], [Title], [Description], [Cost], [Img], [IsActual], [cout]) VALUES (100, N'Атф аденозинтрифосфат         ', N'Метаболическое ср-во.Мышечная дистрофия и атония,п…', 555.0000, N'/Resources/photo_es.jpg', 1, 22)
GO
INSERT [dbo].[Service] ([ID], [Title], [Description], [Cost], [Img], [IsActual], [cout]) VALUES (101, N'Глицин таблетки               ', N'Метаболический препарат. Глицин является регулятором обмена веществ, нормализует и активирует процессы защитного торможения в ЦНС', 434.0000, N'/Resources/1234.jpg', 1, 123)
GO
INSERT [dbo].[Service] ([ID], [Title], [Description], [Cost], [Img], [IsActual], [cout]) VALUES (102, N'Дибикор таблетки              ', N'Препарат комбинированного действия, главным действующим веществом которого является симбиоз ацетилсалициловой кислоты и парацетамола.', 12.0000, N'/Resources/3213.jpg', 1, 12)
GO
INSERT [dbo].[Service] ([ID], [Title], [Description], [Cost], [Img], [IsActual], [cout]) VALUES (103, N'Парацетамол                   ', N'Помимо противоаллергического, оказывает также противовоспалительное действие, включается в состав тройчатки – комбинации препаратов, используемых бригадами «скорой помощи» при неотложной терапии. ', 55.0000, N'/Resources/2341.jpg', 1, 3)
GO
INSERT [dbo].[Service] ([ID], [Title], [Description], [Cost], [Img], [IsActual], [cout]) VALUES (104, N'Цитрамон П                    ', N'Это средство эффективно почти при всех видах аллергии, быстро устраняет проявления сенной лихорадки, крапивницы, нейродермита, дерматита за счет подавления выброса гистамина. Также применяется для лечения мигреней, анорексии, кахексии. ', 89.0000, N'/Resources/peritol.jpg', 1, 44)
GO
INSERT [dbo].[Service] ([ID], [Title], [Description], [Cost], [Img], [IsActual], [cout]) VALUES (105, N'Ибуклин                       ', N'«Ибуклин» ‒ уникальный препарат, основанный на действии парацетамола в сочетании с ибупрофеном. Чаще всего жаропонижающие лекарства имеют в составе только один из этих компонентов', 99.0000, N'/Resources/1516204023_ibukl.jpg', 1, 55)
GO
INSERT [dbo].[Service] ([ID], [Title], [Description], [Cost], [Img], [IsActual], [cout]) VALUES (106, N'Колдакт Флю Плюс              ', N'Метаболическое средство.', 13.0000, N'/Resources/peritol.jpg', 1, 88)
GO
INSERT [dbo].[Service] ([ID], [Title], [Description], [Cost], [Img], [IsActual], [cout]) VALUES (107, N'Перитол                       ', N'уникальный препарат, основанный на действии парацетамола в сочетании с ибупрофеном. Чаще всего жаропонижающие лекарства имеют в составе только один из этих компонентов', 44.0000, N'/Resources/peritol.jpg', 1, 12)
GO
INSERT [dbo].[Service] ([ID], [Title], [Description], [Cost], [Img], [IsActual], [cout]) VALUES (108, N'Диазолин                      ', N'Метаболическое средство.', 55.0000, N'/Resources/diazolin.jpg', 0, 0)
GO
INSERT [dbo].[Service] ([ID], [Title], [Description], [Cost], [Img], [IsActual], [cout]) VALUES (109, N'Димедрол                      ', N'Помимо противоаллергического, оказывает также противовоспалительное действие, включается в состав тройчатки – комбинации препаратов, используемых бригадами «скорой помощи» при неотложной терапии. ', 92.0000, N'/Resources/diazolin.jpg', 0, 0)
GO
INSERT [dbo].[Service] ([ID], [Title], [Description], [Cost], [Img], [IsActual], [cout]) VALUES (110, N'Тавегил                       ', N'Метаболическое средство.', 66.0000, N'/Resources/tavegil.jpg', 0, 0)
GO
INSERT [dbo].[Service] ([ID], [Title], [Description], [Cost], [Img], [IsActual], [cout]) VALUES (111, N'Натрия аденозинтрифосфат      ', N'Метаболическое средство.', 555.0000, N'/Resources/dsad.jpg', 1, 75)
GO
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 
GO
INSERT [dbo].[Status] ([ID], [Status]) VALUES (1, N'Admin               ')
GO
INSERT [dbo].[Status] ([ID], [Status]) VALUES (2, N'Guest               ')
GO
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([ID], [Login], [Password], [Status], [name], [second_name], [phone]) VALUES (1, N'Admin                                             ', N'Admin                                             ', 1, N'Admin', N'Admin', N'000000    ')
GO
INSERT [dbo].[Users] ([ID], [Login], [Password], [Status], [name], [second_name], [phone]) VALUES (2, N'Pasha                                             ', N'Pasha                                             ', 2, N'Pasha', N'Pavlov', N'904223132 ')
GO
INSERT [dbo].[Users] ([ID], [Login], [Password], [Status], [name], [second_name], [phone]) VALUES (3, N'Lena                                              ', N'Lena                                              ', 2, N'Лена', N'Павлова', N'792735732 ')
GO
INSERT [dbo].[Users] ([ID], [Login], [Password], [Status], [name], [second_name], [phone]) VALUES (4, N'Vika                                              ', N'Vika                                              ', 2, N'Виктория', N'Андреева', N'792151931 ')
GO
INSERT [dbo].[Users] ([ID], [Login], [Password], [Status], [name], [second_name], [phone]) VALUES (5, N'Anya                                              ', N'Anya                                              ', 2, N'Карина', N'Алексеева ', N'9211663149')
GO
INSERT [dbo].[Users] ([ID], [Login], [Password], [Status], [name], [second_name], [phone]) VALUES (6, N'wolTest                                           ', N'1234                                              ', 2, N'Макар', N'Баранов ', N'9365277919')
GO
INSERT [dbo].[Users] ([ID], [Login], [Password], [Status], [name], [second_name], [phone]) VALUES (7, N'Kiril                                             ', N'4423                                              ', 2, N'Алина', N'Симонова ', N'9250869146')
GO
INSERT [dbo].[Users] ([ID], [Login], [Password], [Status], [name], [second_name], [phone]) VALUES (10, N'Anna                                              ', N'0942                                              ', 2, N'Вера', N'Власова ', N'9917044541')
GO
INSERT [dbo].[Users] ([ID], [Login], [Password], [Status], [name], [second_name], [phone]) VALUES (12, N'Vadim                                             ', N'42132                                             ', 2, N'Вадим', N'Абрамов ', N'9273573233')
GO
INSERT [dbo].[Users] ([ID], [Login], [Password], [Status], [name], [second_name], [phone]) VALUES (14, N'Kira                                              ', N'0992                                              ', 2, N'Кира', N'Алексеева ', N'9214997760')
GO
INSERT [dbo].[Users] ([ID], [Login], [Password], [Status], [name], [second_name], [phone]) VALUES (15, N'Alter                                             ', N'2312                                              ', 1, N'Виктория', N'Лукина ', N'8432896180')
GO
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
