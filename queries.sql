SELECT DISTINCT brand, model
FROM dbo.DimCars
ORDER BY brand ASC;

UPDATE dbo.DimCars
SET brand = 'jaguar'
WHERE brand= '1guar';

INSERT INTO dbo.DimCars(brand, model)
SELECT DISTINCT brand, model
FROM dbo.datasetCars
ORDER BY brand ASC;

UPDATE dbo.DimFuelType
SET model = 'other'
WHERE model= 'andere';

INSERT INTO dbo.DimFuelType(fuelType)
SELECT DISTINCT fuelType
FROM dbo.datasetCars;

DELETE FROM dbo.datasetCars
WHERE fuelType IS NULL;

INSERT INTO dbo.DimAdvertisement(title, dateCreated, lastSeenOnline, postalCode, nrOfPictures, seller, offerType)
SELECT name, dateCreated, lastSeen, postalCode, nrOfPictures, seller, offerType
FROM dbo.datasetCars;


USE [SPIPI_projekt]
GO

/****** Object:  Table [dbo].[DimGearbox]    Script Date: 3.6.2020. 21:17:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimGearbox](
	[DimGearboxID] [int] IDENTITY(1,1) NOT NULL,
	[gearbox] [varchar](15) NULL,
 CONSTRAINT [PK_DimGearbox] PRIMARY KEY CLUSTERED 
(
	[DimGearboxID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [SPIPI_projekt]
GO

/****** Object:  Table [dbo].[DimFuelType]    Script Date: 3.6.2020. 21:18:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimFuelType](
	[DimFuelTypeID] [int] IDENTITY(1,1) NOT NULL,
	[fuelType] [varchar](10) NULL,
 CONSTRAINT [PK_DimFuelType] PRIMARY KEY CLUSTERED 
(
	[DimFuelTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [SPIPI_projekt]
GO

/****** Object:  Table [dbo].[DimDate]    Script Date: 3.6.2020. 21:18:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimDate](
	[DimDateID] [int] IDENTITY(1,1) NOT NULL,
	[day] [nvarchar](20) NULL,
	[month] [nvarchar](20) NULL,
	[year] [nvarchar](20) NULL,
	[quartal] [nvarchar](20) NULL,
 CONSTRAINT [PK_DimDate] PRIMARY KEY CLUSTERED 
(
	[DimDateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [SPIPI_projekt]
GO

/****** Object:  Table [dbo].[DimCar]    Script Date: 3.6.2020. 21:18:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimCar](
	[DimCarsID] [int] IDENTITY(1,1) NOT NULL,
	[brand] [varchar](30) NULL,
	[model] [varchar](30) NULL,
 CONSTRAINT [PK_DimCars] PRIMARY KEY CLUSTERED 
(
	[DimCarsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [SPIPI_projekt]
GO

/****** Object:  Table [dbo].[DimAdvertisement]    Script Date: 3.6.2020. 21:19:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimAdvertisement](
	[DimAdvertisementID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nchar](50) NULL,
	[dateCreated] [date] NULL,
	[lastSeenOnline] [date] NULL,
	[postalCode] [int] NULL,
	[nrOfPictures] [int] NULL,
	[seller] [varchar](10) NULL,
	[offerType] [varchar](10) NULL,
 CONSTRAINT [PK_DimAdvertisement1] PRIMARY KEY CLUSTERED 
(
	[DimAdvertisementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



USE [SPIPI_projekt]
GO

/****** Object:  Table [dbo].[datasetCars]    Script Date: 3.6.2020. 21:19:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[datasetCars](
	[dateCrawled] [datetime2](7) NULL,
	[name] [nvarchar](100) NULL,
	[seller] [nvarchar](50) NULL,
	[offerType] [nvarchar](50) NULL,
	[price] [nvarchar](50) NULL,
	[vehicleType] [nvarchar](50) NULL,
	[yearOfRegistration] [int] NULL,
	[gearbox] [nvarchar](50) NULL,
	[powerPS] [nvarchar](50) NULL,
	[model] [nvarchar](50) NULL,
	[kilometer] [int] NULL,
	[monthOfRegistration] [nvarchar](50) NULL,
	[fuelType] [nvarchar](50) NULL,
	[brand] [nvarchar](50) NULL,
	[notRepairedDamage] [nvarchar](50) NULL,
	[dateCreated] [datetime2](7) NULL,
	[nrOfPictures] [nvarchar](50) NULL,
	[postalCode] [int] NULL,
	[lastSeen] [datetime2](7) NULL
) ON [PRIMARY]
GO

-------------new------------------------

USE [SPIPI_projekt]
GO

/****** Object:  Table [dbo].[DimAdvertisement]    Script Date: 3.6.2020. 21:19:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimAdvertisement](
	[DimAdvertisementID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[dateCreated] [datetime2] (7) NULL,
	[lastSeenOnline] [datetime2] (7) NULL,
	[postalCode] [int] NULL,
	[nrOfPictures] [int] NULL,
	[seller] [nvarchar](50) NULL,
	[offerType] [nvarchar](50) NULL,
 CONSTRAINT [PK_DimAdvertisement1] PRIMARY KEY CLUSTERED 
(
	[DimAdvertisementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

--------------------------------------------------------------------------
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx



INSERT INTO dbo.DimFuelType(fuelType)
SELECT fuelType
FROM dbo.datasetCars;


INSERT INTO dbo.DimDate(day, month, year, quartal)
SELECT 
		DATEPART(dd, dbo.datasetCars.dateCreated),
		DATEPART(mm, dbo.datasetCars.dateCreated),
		DATEPART(yy, dbo.datasetCars.dateCreated),
		DATEPART(qq, dbo.datasetCars.dateCreated)
FROM dbo.datasetCars;


USE [SPIPI_projekt]
GO

/****** Object:  Table [dbo].[DimGearbox]    Script Date: 3.6.2020. 22:07:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimGearbox](
	[DimGearboxID] [int] IDENTITY(1,1) NOT NULL,
	[gearbox] [nvarchar](50) NULL,
 CONSTRAINT [PK_DimGearbox] PRIMARY KEY CLUSTERED 
(
	[DimGearboxID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [SPIPI_projekt]
GO

/****** Object:  Table [dbo].[DimFuelType]    Script Date: 3.6.2020. 22:08:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimFuelType](
	[DimFuelTypeID] [int] IDENTITY(1,1) NOT NULL,
	[fuelType] [nvarchar](50) NULL,
 CONSTRAINT [PK_DimFuelType] PRIMARY KEY CLUSTERED 
(
	[DimFuelTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [SPIPI_projekt]
GO

/****** Object:  Table [dbo].[DimDate]    Script Date: 3.6.2020. 22:08:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimDate](
	[DimDateID] [int] IDENTITY(1,1) NOT NULL,
	[day] [int] NULL,
	[month] [int] NULL,
	[year] [int] NULL,
	[quartal] [int] NULL,
 CONSTRAINT [PK_DimDate] PRIMARY KEY CLUSTERED 
(
	[DimDateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



USE [SPIPI_projekt]
GO

/****** Object:  Table [dbo].[DimCar]    Script Date: 3.6.2020. 22:08:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimCar](
	[DimCarsID] [int] IDENTITY(1,1) NOT NULL,
	[brand] [nvarchar](50) NULL,
	[model] [nvarchar](50) NULL,
 CONSTRAINT [PK_DimCars] PRIMARY KEY CLUSTERED 
(
	[DimCarsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



USE [SPIPI_projekt]
GO

/****** Object:  Table [dbo].[DimAdvertisement]    Script Date: 3.6.2020. 22:08:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimAdvertisement](
	[DimAdvertisementID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[dateCreated] [datetime2](7) NULL,
	[lastSeenOnline] [datetime2](7) NULL,
	[postalCode] [int] NULL,
	[nrOfPictures] [int] NULL,
	[seller] [nvarchar](50) NULL,
	[offerType] [nvarchar](50) NULL,
 CONSTRAINT [PK_DimAdvertisement1] PRIMARY KEY CLUSTERED 
(
	[DimAdvertisementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



USE [SPIPI_projekt]
GO

/****** Object:  Table [dbo].[datasetCars]    Script Date: 3.6.2020. 22:08:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[datasetCars](
	[csvID] [int] NOT NULL,
	[dateCrawled] [datetime2](7) NULL,
	[name] [nvarchar](100) NULL,
	[seller] [nvarchar](50) NULL,
	[offerType] [nvarchar](50) NULL,
	[price] [int] NULL,
	[vehicleType] [nvarchar](50) NULL,
	[yearOfRegistration] [int] NULL,
	[gearbox] [nvarchar](50) NULL,
	[powerPS] [int] NULL,
	[model] [nvarchar](50) NULL,
	[kilometer] [int] NULL,
	[monthOfRegistration] [int] NULL,
	[fuelType] [nvarchar](50) NULL,
	[brand] [nvarchar](50) NULL,
	[notRepairedDamage] [char](1) NULL,
	[dateCreated] [datetime2](7) NULL,
	[nrOfPictures] [int] NULL,
	[postalCode] [int] NULL,
	[lastSeen] [datetime2](7) NULL,
 CONSTRAINT [PK_datasetCars] PRIMARY KEY CLUSTERED 
(
	[csvID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [SPIPI_projekt]
GO

/****** Object:  Table [dbo].[FactCars]    Script Date: 3.6.2020. 22:23:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactCars](
	[ID_Advertisement] [int] NULL,
	[ID_Car] [int] NULL,
	[ID_Date] [int] NULL,
	[ID_FuelType] [int] NULL,
	[ID_Gearbox] [int] NULL,
	[priceEUR] [int] NULL,
	[powerPS] [int] NULL,
	[kilometers] [int] NULL,
	[monthOfRegistration] [int] NULL,
	[yearOfRegistration] [int] NULL,
	[postalCode] [int] NULL
) ON [PRIMARY]
GO


INSERT INTO dbo.FactsCars(ID_Advertisement, ID_Car, ID_Date, ID_FuelType, ID_Gearbox)
SELECT  DimAdvertisementID, DimCarsID, DimDateID, DimFuelTypeID, DimGearboxID
FROM dbo.DimAdvertisement, dbo.DimCar, dbo.DimDate, dbo.DimFuelType, dbo.DimGearbox
WHERE DimAdvertisementID=DimCarsID AND DimCarsID=DimDateID AND DimDateID=DimFuelTypeID 
	  AND DimFuelTypeID=DimGearboxID;



      UPDATE dbo.FactsCars
SET priceEUR = price,
	powerPS = dbo.datasetCars.powerPS,
	kilometers = kilometer,
	monthOfRegistration = dbo.datasetCars.monthOfRegistration,
	yearOfRegistration = dbo.datasetCars.yearOfRegistration,
	postalCode = dbo.datasetCars.postalCode
FROM dbo.FactsCars INNER JOIN dbo.datasetCars
ON ID_Advertisement=csvID AND ID_Car=csvID AND ID_Date=csvID AND ID_FuelType=csvID AND ID_Gearbox=csvID;


INSERT INTO prodaja (racun, datum, artikli, blagajnik,
iznos_stavke, kolicina, zarada, trgovina)
SELECT racuni1.br_racuna, datumi.id, artikli.id, trgovci.id,
racun_stavke1.iznos, racun_stavke1.kolicina,
IIf(cint([racun_stavke1.por_tarifa])=0, [racun_stavke1].[iznos] -
[racun_stavke1].[nab_vrijed], ([racun_stavke1].[iznos]-
1.25*[racun_stavke1].[nab_vrijed])/1.25) AS Expr1, 1
FROM trgovci
INNER JOIN (blagajnik1 INNER JOIN (artikli INNER JOIN
(artikli_pomocni1 INNER JOIN ((racuni1 INNER JOIN
racun_stavke1 ON racuni1.br_racuna = racun_stavke1.br_racuna)
INNER JOIN datumi ON racuni1.datum_rac = datumi.datum) ON
artikli_pomocni1.artikal = racun_stavke1.artikal) ON artikli.sifra =
artikli_pomocni1.sifra) ON blagajnik1.sifra = racuni1.blagajnik) ON
trgovci.trgovac = blagajnik1.blagajnik;


INSERT INTO test1.dbo.FactCars(ID_Advertisement, ID_Car, ID_Date, ID_FuelType, ID_Gearbox)
SELECT test1.dbo.DimAdvertisement.DimAdvertisementID, test1.dbo.DimCar.DimCarsID, test1.dbo.DimDate.DimDateID, 
	   test1.dbo.DimFuelType.DimFuelTypeID, test1.dbo.DimGearbox.DimGearboxID
FROM test1.dbo.DimAdvertisement
	INNER JOIN (test1.dbo.DimCar INNER JOIN (dbo.DimDate INNER JOIN 
	(test1.dbo.DimFuelType (INNER JOIN test1.dbo.DimGearbox	
	ON test1.dbo.DimGearbox.DimGearboxID = test1.dbo.FactCars.ID_Gearbox)
	ON test1.dbo.DimFuelType.DimFuelTypeID = test1.dbo.FactCars.ID_FuelType)
	ON test1.dbo.DimDate.DimDateID = test1.dbo.FactCars.ID_Date)
	ON test1.dbo.DimCar.DimCarsID = test1.dbo.FactCars.ID_Date)
	ON test1.dbo.DimAdvertisement.DimAdvertisementID. = test1.dbo.FactCars.DimAdvertisemen.ID_Advertisement;



	INNER JOIN (test1.dbo.DimCar INNER JOIN (dbo.DimDate INNER JOIN 
	(test1.dbo.DimFuelType (INNER JOIN test1.dbo.DimGearbox	
	ON test1.dbo.DimGearbox.DimGearboxID = test1.dbo.FactCars.ID_Gearbox)
	ON test1.dbo.DimFuelType.DimFuelTypeID = test1.dbo.FactCars.ID_FuelType)
	ON test1.dbo.DimDate.DimDateID = test1.dbo.FactCars.ID_Date)
	ON test1.dbo.DimCar.DimCarsID = test1.dbo.FactCars.ID_Date)
	ON test1.dbo.DimAdvertisement.DimAdvertisementID. = test1.dbo.FactCars.DimAdvertisemen.ID_Advertisement;






	--INSERT INTO dbo.FactsCars(ID_Advertisement)
--	SELECT  DISTINCT DimAdvertisementID
--	FROM test1.dbo.DimAdvertisement, test1.dbo.datasetCars
--	WHERE test1.dbo.DimAdvertisement.title = test1.dbo.datasetCars.name;


UPDATE dbo.datasetCars
SET dbo.datasetCars.ID_Advertisement =  b.DimAdvertisementID
FROM dbo.datasetCars a
INNER JOIN dbo.DimAdvertisement b ON a.name = b.title;

UPDATE dbo.datasetCars
SET dbo.datasetCars.ID_Brand =  b.DimBrandID
FROM dbo.datasetCars a
INNER JOIN dbo.DimBrand b ON a.brand = b.brand;

UPDATE dbo.datasetCars
SET dbo.datasetCars.ID_Date =  b.DimDateID
FROM dbo.datasetCars a
INNER JOIN dbo.DimDate b ON a.dateCreated = b.date;

UPDATE dbo.datasetCars
SET dbo.datasetCars.ID_FuelType =  b.DimFuelTypeID
FROM dbo.datasetCars a
INNER JOIN dbo.DimFuelType b ON a.fuelType = b.fuelType;

UPDATE dbo.datasetCars
SET dbo.datasetCars.ID_Date =  b.DimGearboxID
FROM dbo.datasetCars a
INNER JOIN dbo.DimGearbox b ON a.gearbox = b.gearbox;

UPDATE dbo.datasetCars
SET dbo.datasetCars.ID_Model=  b.DimModelID
FROM dbo.datasetCars a
INNER JOIN dbo.DimModel b ON a.model= b.model;

--INSERT INTO test1.dbo.DimBrand
--SELECT DISTINCT brand
--FROM test1.dbo.datasetCars;

--INSERT INTO test1.dbo.DimModel (model)
--SELECT DISTINCT model
--FROM test1.dbo.datasetCars;

--INSERT INTO dbo.DimDate(date, day, month, year, quartal)
--SELECT DISTINCT
--		dbo.datasetCars.dateCreated,
--		DATEPART(dd, dbo.datasetCars.dateCreated),
--		DATEPART(mm, dbo.datasetCars.dateCreated),
--		DATEPART(yy, dbo.datasetCars.dateCreated),
--		DATEPART(qq, dbo.datasetCars.dateCreated)
--FROM dbo.datasetCars;


--SELECT DISTINCT test1.dbo.datasetCars.dateCreated  FROM test1.dbo.datasetCars;

--UPDATE test1.dbo.datasetCars
--SET test1.dbo.datasetCars.ID_Date =  b.DimDateID
--FROM test1.dbo.datasetCars a
--INNER JOIN test1.dbo.DimDate b ON a.dateCreated = b.date;

--ALTER TABLE test1.dbo.datasetCars
--ADD CONSTRAINT 




