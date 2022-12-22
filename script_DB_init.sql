create database TKT
use TKT




create table Vehiculo (
    pk_int_Id int identity primary key,
    str_placa  varchar(15), --placa
    str_Modelo varchar(100) not null,
    date_ult_mantenimiento  date,
    int_km_ultimo_mantenimiento int,
	int_Id_Conductor int foreign key references Conductor(pk_int_Id)
)

create table Conductor(
    pk_int_Id int identity primary key, 
	str_Nombre varchar(50) not null,
	str_Apellido varchar(50) not null,
	str_Numero_licencia varchar(50) not null,
	date_Fecha_renovacion date not null,
	img_Licencia text
)



create table Banco(
    int_Id  int identity not null primary key,-- numero de la cta
    str_Titular varchar(50) not null,
	str_Nombre varchar(25), 
    str_Tipo varchar(20) not null
)


create table Cliente(
    pk_int_Id int primary key,
    str_Nombre varchar(100) not null,
    str_Responsable varchar(50),	
    str_Direccion varchar(100),
    int_Numero_contacto int,
    str_Periodos_de_pagos varchar(20),
	int_Id_Cuenta int foreign key references Banco(int_Id)
)


--tabla cruzada vehiculo cliente
create table Vehicli(
    int_Id_vehiculo int not null  foreign key references Vehiculo(pk_int_Id),
    int_Id_Cliente int not null  foreign key references Cliente(pk_int_Id),
    date_fecha_asignacion date not null,
    date_fecha_retiro date,
    str_Observaciones varchar(100),
	primary key(int_Id_vehiculo,int_Id_Cliente)
)

create table Ruta(
    pk_int_Id int identity,
	str_Nombre varchar(25) not null,
	int_Valor int not null,
	int_Km int,
	date_Fecha date,
	int_Id_Vehiculo int foreign key references Vehiculo(pk_int_Id),
	int_Id_Cliente int foreign key references Cliente(pk_int_Id)
)
