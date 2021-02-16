create database jopa;

create table [Service]
(
ID_service int identity(1,1),
Name_service nvarchar(max),
[Description] nvarchar(max),
Cost nvarchar(max),
Discount nvarchar(max),
Dlitelnost nvarchar(max),
Photo varbinary(max),
ID_Post int,
ID_PhotoService int
);

create table PhotoService(
ID_PhotoService int primary key identity(1,1),
ID_service int,
Photo varbinary(max)
);

create table Tovar
(
ID_tovar int primary key identity(1,1),
NameTovar nvarchar(max),
[Description] nvarchar(max),
Discount nvarchar(max),
Photo varbinary(max),
ID_proizv int,
[Weight] nvarchar(max),
Height nvarchar(max),
Width nvarchar(max),
Visota nvarchar(max),
Glubina nvarchar(max)
);

create table proizvoditel 
(
ID_proizv int primary key identity(1,1),
ID_Tovar int,
Date_Start date
);

create table Worker
(
ID_worker int primary key identity(1,1),
FirstName nvarchar(max),
LastName nvarchar(max),
MiddleName nvarchar(max),
GenderID int,
K_oplat nvarchar(max),
Birthday date,
ID_category int,
ID_passport int,
ID_gender int
);

create table Passport
(
ID_Passport int primary key identity(1,1),
ID_Worker int,
SerialNumber int,
DepatrmentID int
);

create table caategory
(
ID_category int,
Name_category nvarchar(max)
);

create table Client
(
ID_client int primary key identity(1,1),
FirstName nvarchar(max),
LastName nvarchar(max),
MiddleName nvarchar(max),
GenderID int,
Birthday date,
FirstDate date,
Photo varbinary(max),
ID_Satus int,
ID_gender int
);

create table [Status]
(
ID_status int,
Name_status nvarchar(max)
);

create table DopPhotoService
(
ID_DPs int primary key identity(1,1),
ID_Service int,
Photo varbinary(max)
);

create table DopPhotoTovar
(
ID_DPt int primary key identity(1,1),
ID_Tovar int,
Photo varbinary(max)
);

create table ClientService
(
ID_CS int primary key identity(1,1),
ID_client int,
ID_service int,
ID_tovar int,
DateStartTime date,
Desription nvarchar(max),
ID_DFile int
);

create table DopPhotoServiceClient
(
ID_DPsc int primary key identity(1,1),
ID_cs int,
Photo varbinary(max)
);

create table gender
(
ID int primary key identity(1,1),
NameGender nvarchar(max)
);

