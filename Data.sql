/*________________User_Start________________*/
CREATE TABLE [dbo].[User](
[U_id] [int] IDENTITY(1,1) NOT NULL,
[U_firstname] [varchar] (50) NOT NULL,
[U_lastname] [varchar] (50) NOT NULL,
[U_mail] [varchar] (100) NOT NULL,
[U_password] [varchar] (20) NOT NULL,
[U_cpr] [int] NOT NULL,
[U_number] [int] NULL,
[C_cvr] [int] NOT NULL,
/*
[U_rank_level_id] [int] NOT NULL,
*/
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[U_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY];
/*________________User_Slut________________*/


/*________________Company_Start________________*/
CREATE TABLE [dbo].[Company] (
[C_cvr] [int] IDENTITY(1,1) NOT NULL,
[C_name] [varchar] (100) NOT NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[C_cvr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY];
/*________________Company_Slut________________*/


/*________________Trash_Start________________*/
CREATE TABLE [dbo].[Trash] (
[T_id] [int] IDENTITY(1,1) NOT NULL,
[T_name] [varchar] (100) NOT NULL,
[T_date] [datetime] NOT NULL,
[T_amount] [decimal] (20) NOT NULL,
[T_desc] [int]NOT NULL,
[T_responsible] [varchar] (100) NOT NULL,
[C_cvr] [int] NOT NULL,
[Uom_id] [int] NOT NULL,
[Cat_id] [int] NOT NULL,
 CONSTRAINT [PK_Trash] PRIMARY KEY CLUSTERED 
(
	[T_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY];

INSERT INTO  [dbo].[Trash] (T_id)
VALUES 
(0), (1);

INSERT INTO [dbo].[Trash] (T_name) 
VALUES 
('Mercedes AMG 63'), ('Computerskærme');

INSERT INTO [dbo].[Trash] (T_responsible) 
VALUES 
('John Doe'), ('John Doe');

INSERT INTO [dbo].[Trash] (T_amount)
VALUES 
(1.0), (27.64);

INSERT INTO [dbo].[Trash] (Uom_id)
VALUES 
(2), (4);

INSERT INTO [dbo].[Trash] (Cat_id)
VALUES 
(2), (3);
/*________________Trash_Slut________________*/

/*________________Category_Start________________*/
CREATE TABLE [dbo].[Category] (
[Cat_id] [int] IDENTITY(1,1) NOT NULL,
[Cat_name] [varchar] (100) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Cat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY];

INSERT INTO [dbo].[Category] (Cat_id)
VALUES 
(0), (1), (2), (3), (4), (5), (6), (7), (8);

INSERT INTO [dbo].[Category] (Cat_name) 
VALUES 
('Coli'), ('Stk'), ('Ton'), ('Kilogram'), ('Gram'), ('M3'), ('Liter'), ('Hektoliter');
/*________________Category_Slut________________*/

/*________________Unit_of_measure_Start________________*/
CREATE TABLE Unit_of_measure (
[Uom_id] [int] IDENTITY(1,1) NOT NULL,
[Uom_name] [varchar] (100) NOT NULL,
 CONSTRAINT [PK_Unit_of_measure] PRIMARY KEY CLUSTERED 
(
	[Uom_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY];

INSERT INTO [dbo].[Unit_of_measure] (Uom_id)
VALUES 
(0), (1), (2), (3), (4), (5), (6), (7), (8), (9); 

INSERT INTO [dbo].[Unit_of_measure] (Uom_name) 
VALUES 
('Batterier'), ('Biler'), ('Elektronikaffald'), ('Imprægneret træ'), ('Inventar'), 
('Organisk affald'), ('Pap og papir'), ('Plastemballager'), ('PVC');
/*________________Unit_of_measure_Slut________________*/

ALTER TABLE RestrictionSektor
ADD CONSTRAINT RS PRIMARY KEY (S_codes, Risikoniveau, R_titel);