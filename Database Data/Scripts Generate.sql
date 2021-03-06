USE [NewsApp]
GO
/****** Object:  Table [dbo].[ARTICULOS]    Script Date: 15/07/2021 20:24:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARTICULOS](
	[IdArticulo] [int] IDENTITY(1,1) NOT NULL,
	[Autor] [varchar](50) NULL,
	[Titulo] [varchar](max) NULL,
	[Descripcion] [varchar](max) NULL,
	[ArticuloURL] [varchar](max) NULL,
	[ImagenURL] [varchar](max) NULL,
	[FechaPublicacion] [date] NULL,
	[Contenido] [varchar](max) NULL,
	[IdCategoria] [int] NULL,
	[IdPais] [int] NULL,
	[IdFuente] [int] NULL,
 CONSTRAINT [pk_IdArticulo] PRIMARY KEY CLUSTERED 
(
	[IdArticulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CATEGORIAS]    Script Date: 15/07/2021 20:24:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORIAS](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[NombreCategoria] [varchar](50) NULL,
 CONSTRAINT [pk_IdCategoria] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FUENTES]    Script Date: 15/07/2021 20:24:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FUENTES](
	[IdFuente] [int] IDENTITY(1,1) NOT NULL,
	[NombreFuente] [varchar](50) NULL,
 CONSTRAINT [pk_IdFuente] PRIMARY KEY CLUSTERED 
(
	[IdFuente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PAISES]    Script Date: 15/07/2021 20:24:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAISES](
	[IdPais] [int] IDENTITY(1,1) NOT NULL,
	[NombrePais] [varchar](50) NULL,
 CONSTRAINT [pk_IdPais] PRIMARY KEY CLUSTERED 
(
	[IdPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ARTICULOS] ON 

INSERT [dbo].[ARTICULOS] ([IdArticulo], [Autor], [Titulo], [Descripcion], [ArticuloURL], [ImagenURL], [FechaPublicacion], [Contenido], [IdCategoria], [IdPais], [IdFuente]) VALUES (1, N'Catherine Shu', N'Dovetail, the venture studio that has worked with startups like Afterpay, is raising a new fund', N'Based in Sydney and Auckland, Dovetail is a full-service venture studio that works closely with founders who have a great idea, but may lack technical backgrounds. Dovetail helps them build companies from the ground up, preparing them for growth and more fund…', N'http://techcrunch.com/2021/07/11/dovetail-the-venture-studio-that-has-worked-with-startups-like-afterpay-is-raising-a-new-fund/', N'https://techcrunch.com/wp-content/uploads/2020/07/equity-podcast-2019-phone.jpg?w=711', CAST(N'2021-07-12' AS Date), N'Dovetail co-founders Ash Fogelberg and Nick Frandsen\r\nBased in Sydney and Auckland, Dovetail is a full-service venture studio that works closely with founders who have a great idea, but may lack tech… [+3666 chars]', 7, 54, 1)
INSERT [dbo].[ARTICULOS] ([IdArticulo], [Autor], [Titulo], [Descripcion], [ArticuloURL], [ImagenURL], [FechaPublicacion], [Contenido], [IdCategoria], [IdPais], [IdFuente]) VALUES (2, N'Patrick Pester', N'Humans are practically defenseless. Why don''t wild animals attack us more? - Livescience.com', N'Without tools, we''re practically defenseless', N'"https://www.livescience.com/why-predators-dont-attack-humans.html', N'https://cdn.mos.cms.futurecdn.net/YeLrSfn5DTTomJWMMRmgyQ-1200-80.jpg', CAST(N'2021-07-12' AS Date), N'They are more afraid of you than you are of them\" is a saying that is often used to reassure hikers that even large predators, such as bears\r\n and pumas\r\n, pose little threat to us. But humans are s… [+5248 chars]', 5, 54, 13)
INSERT [dbo].[ARTICULOS] ([IdArticulo], [Autor], [Titulo], [Descripcion], [ArticuloURL], [ImagenURL], [FechaPublicacion], [Contenido], [IdCategoria], [IdPais], [IdFuente]) VALUES (3, N'Tom McKay', N'$28 Million Ticket-Holder for Jeff Bezos’s Flight to Space Suddenly Has Something Better to Do - Gizmodo', N'The mystery bidder who won a seat on the maiden crewed flight of the New Shepard rocket now has... \"scheduling conflicts.', N'https://gizmodo.com/28-million-ticket-holder-for-jeff-bezos-s-flight-to-sp-1847301151', N'https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/bf30614d716f5381ff3ce6b7827160e4.jpg', CAST(N'2021-07-15' AS Date), N'The person who paid $28 million for a seat to the edge of space with billionaire Amazon magnate Jeff Bezos on one of his Blue Origin rockets has decided they have better things to do.\r\nOn July 20, Be… [+2852 chars]', 7, 54, 9)
INSERT [dbo].[ARTICULOS] ([IdArticulo], [Autor], [Titulo], [Descripcion], [ArticuloURL], [ImagenURL], [FechaPublicacion], [Contenido], [IdCategoria], [IdPais], [IdFuente]) VALUES (4, N'Aria Alamalhodaei', N'Thales Alenia Space to develop pressurized modules for Axiom’s private space station', N'More details are beginning to emerge on Houston-based Axiom Space’s ambitious project to build and operate the world’s first commercial space station. Thales Alenia Space, a European aerospace manufacturer, will develop the two pressurized modules of the Axio…', N' http://techcrunch.com/2021/07/15/thales-alenia-space-to-develop-pressurized-modules-for-axioms-private-space-station/', N'https://techcrunch.com/wp-content/uploads/2021/07/axiom-station-iss-below_1100.jpeg?w=711', CAST(N'2021-07-15' AS Date), N'More details are beginning to emerge on Houston-based Axiom Spaces ambitious project to build and operate the worlds first commercial space station.\r\nThales Alenia Space, a European aerospace manufac… [+1894 chars]', 7, 54, 1)
INSERT [dbo].[ARTICULOS] ([IdArticulo], [Autor], [Titulo], [Descripcion], [ArticuloURL], [ImagenURL], [FechaPublicacion], [Contenido], [IdCategoria], [IdPais], [IdFuente]) VALUES (5, N'Thomas Macaulay', N'These retail giants are monitoring you with facial recognition, say campaigners', N'Some of the biggest retailers in the US are using facial recognition to monitor people in their stores, according to new research. A coalition of civil rights groups says that retails giants including Macy’s, Ace Hardware, and Lowe’s are currently using the t…', N'https://thenextweb.com/news/retail-stores-monitoring-you-with-facial-recognition', N'https://img-cdn.tnwcdn.com/image/neural?filter_last=1&fit=1280%2C640&url=https%3A%2F%2Fcdn0.tnwcdn.com%2Fwp-content%2Fblogs.dir%2F1%2Ffiles%2F2021%2F07%2FUntitled-design-1-2.jpg&signature=3261f0546d4c312e6f118f86303e73d5', CAST(N'2021-07-15' AS Date), N'Some of the biggest retailers in the US are using facial recognition to monitor people in their stores, according to new research.\r\nA coalition of civil rights groups says that retails giants includi… [+2043 chars]', 3, 54, 16)
INSERT [dbo].[ARTICULOS] ([IdArticulo], [Autor], [Titulo], [Descripcion], [ArticuloURL], [ImagenURL], [FechaPublicacion], [Contenido], [IdCategoria], [IdPais], [IdFuente]) VALUES (6, N'Luis Ferré-Sadurní, William K. Rashbaum', N'Cuomo to Be Questioned in Sexual Harassment Inquiry - The New York Times', N'Gov. Andrew Cuomo is expected to face investigators on Saturday in a sign that the attorney general’s inquiry may be nearing its final stages.', N'https://www.nytimes.com/2021/07/15/nyregion/cuomo-investigation-harassment.html', N'https://static01.nyt.com/images/2021/07/15/nyregion/15cuomo01/15cuomo01-facebookJumbo.jpg', CAST(N'2021-07-15' AS Date), N'Charlotte Bennett, a former aide to Mr. Cuomo, told The Times in February that the governor, who is almost 40 years her senior, made sexual overtures while they were alone in his State Capitol office… [+1898 chars]', 8, 54, 23)
SET IDENTITY_INSERT [dbo].[ARTICULOS] OFF
GO
SET IDENTITY_INSERT [dbo].[CATEGORIAS] ON 

INSERT [dbo].[CATEGORIAS] ([IdCategoria], [NombreCategoria]) VALUES (1, N'General')
INSERT [dbo].[CATEGORIAS] ([IdCategoria], [NombreCategoria]) VALUES (2, N'Business')
INSERT [dbo].[CATEGORIAS] ([IdCategoria], [NombreCategoria]) VALUES (3, N'Entertainment')
INSERT [dbo].[CATEGORIAS] ([IdCategoria], [NombreCategoria]) VALUES (4, N'Health')
INSERT [dbo].[CATEGORIAS] ([IdCategoria], [NombreCategoria]) VALUES (5, N'Science')
INSERT [dbo].[CATEGORIAS] ([IdCategoria], [NombreCategoria]) VALUES (6, N'Sports')
INSERT [dbo].[CATEGORIAS] ([IdCategoria], [NombreCategoria]) VALUES (7, N'Technology')
INSERT [dbo].[CATEGORIAS] ([IdCategoria], [NombreCategoria]) VALUES (8, N'Policy')
SET IDENTITY_INSERT [dbo].[CATEGORIAS] OFF
GO
SET IDENTITY_INSERT [dbo].[FUENTES] ON 

INSERT [dbo].[FUENTES] ([IdFuente], [NombreFuente]) VALUES (1, N'TechCrunch')
INSERT [dbo].[FUENTES] ([IdFuente], [NombreFuente]) VALUES (2, N'Mashable')
INSERT [dbo].[FUENTES] ([IdFuente], [NombreFuente]) VALUES (3, N'The Verge')
INSERT [dbo].[FUENTES] ([IdFuente], [NombreFuente]) VALUES (4, N'BBC News')
INSERT [dbo].[FUENTES] ([IdFuente], [NombreFuente]) VALUES (5, N'Reuters')
INSERT [dbo].[FUENTES] ([IdFuente], [NombreFuente]) VALUES (6, N'MarketBeat')
INSERT [dbo].[FUENTES] ([IdFuente], [NombreFuente]) VALUES (7, N'ESPN')
INSERT [dbo].[FUENTES] ([IdFuente], [NombreFuente]) VALUES (8, N'New York Post')
INSERT [dbo].[FUENTES] ([IdFuente], [NombreFuente]) VALUES (9, N'CNBC')
INSERT [dbo].[FUENTES] ([IdFuente], [NombreFuente]) VALUES (10, N'NBC News')
INSERT [dbo].[FUENTES] ([IdFuente], [NombreFuente]) VALUES (11, N'CNN')
INSERT [dbo].[FUENTES] ([IdFuente], [NombreFuente]) VALUES (12, N'Eurosport.com')
INSERT [dbo].[FUENTES] ([IdFuente], [NombreFuente]) VALUES (13, N'Live Science')
INSERT [dbo].[FUENTES] ([IdFuente], [NombreFuente]) VALUES (14, N'Google News')
INSERT [dbo].[FUENTES] ([IdFuente], [NombreFuente]) VALUES (15, N'Engadget')
INSERT [dbo].[FUENTES] ([IdFuente], [NombreFuente]) VALUES (16, N'The Next Web')
INSERT [dbo].[FUENTES] ([IdFuente], [NombreFuente]) VALUES (17, N'ABC News')
INSERT [dbo].[FUENTES] ([IdFuente], [NombreFuente]) VALUES (18, N'Aftenposten')
INSERT [dbo].[FUENTES] ([IdFuente], [NombreFuente]) VALUES (19, N'ANSA.it')
INSERT [dbo].[FUENTES] ([IdFuente], [NombreFuente]) VALUES (20, N'Argaam')
INSERT [dbo].[FUENTES] ([IdFuente], [NombreFuente]) VALUES (21, N'Ary News')
INSERT [dbo].[FUENTES] ([IdFuente], [NombreFuente]) VALUES (22, N'Associated Press')
INSERT [dbo].[FUENTES] ([IdFuente], [NombreFuente]) VALUES (23, N'New York Times')
SET IDENTITY_INSERT [dbo].[FUENTES] OFF
GO
SET IDENTITY_INSERT [dbo].[PAISES] ON 

INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (1, N'Argentina')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (2, N'Australia')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (3, N'Austria')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (4, N'Belgium')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (5, N'Brazil')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (6, N'Bulgaria')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (7, N'Cánada')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (8, N'China')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (9, N'Colombia')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (10, N'Cuba')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (11, N'Czech Republic')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (12, N'Egypt')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (13, N'France')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (14, N'Germany')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (15, N'Greece')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (16, N'Hong Kong')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (17, N'Hungary')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (18, N'India')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (19, N'Indonesia')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (20, N'Ireland')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (21, N'Israel')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (22, N'Italy')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (23, N'Japan')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (24, N'Latvia')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (25, N'Lithuania')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (26, N'Malaysia')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (27, N'Mexico')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (28, N'Morocco')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (29, N'Netherlands')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (30, N'New Zealand')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (31, N'Nigeria')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (32, N'Norway')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (33, N'Philippines')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (34, N'Poland')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (35, N'Portugal')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (36, N'Romania')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (37, N'Russian Federation')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (38, N'Saudi Arabia')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (39, N'Serbia')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (40, N'Singapore')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (41, N'Slovakia')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (42, N'Slovenia')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (43, N'South Africa')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (44, N'Korea')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (45, N'Sweden')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (46, N'Switzerland')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (47, N'Taiwan')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (48, N'Thailand')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (49, N'Turkey')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (50, N'Ukraine')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (51, N'United Arab Emirates')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (53, N'United Kingdom ')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (54, N'United States of America')
INSERT [dbo].[PAISES] ([IdPais], [NombrePais]) VALUES (55, N'Venezuela')
SET IDENTITY_INSERT [dbo].[PAISES] OFF
GO
ALTER TABLE [dbo].[ARTICULOS]  WITH CHECK ADD  CONSTRAINT [Fk_IdCategoria] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[CATEGORIAS] ([IdCategoria])
GO
ALTER TABLE [dbo].[ARTICULOS] CHECK CONSTRAINT [Fk_IdCategoria]
GO
ALTER TABLE [dbo].[ARTICULOS]  WITH CHECK ADD  CONSTRAINT [Fk_IdFuente] FOREIGN KEY([IdFuente])
REFERENCES [dbo].[FUENTES] ([IdFuente])
GO
ALTER TABLE [dbo].[ARTICULOS] CHECK CONSTRAINT [Fk_IdFuente]
GO
ALTER TABLE [dbo].[ARTICULOS]  WITH CHECK ADD  CONSTRAINT [Fk_IdPais] FOREIGN KEY([IdPais])
REFERENCES [dbo].[PAISES] ([IdPais])
GO
ALTER TABLE [dbo].[ARTICULOS] CHECK CONSTRAINT [Fk_IdPais]
GO
