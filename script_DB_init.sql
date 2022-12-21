create database TKT

create table User(
    int_Id int identity,
    str_Nombre varchar(100) not null,
    str_Apellido  varchar(100) not null,
    str_Telefono varchar(100) not null,
    str_Tipo varchar(100) not null,
)

create table Estado_Vehiculo(
    int_Id int identity,
    str_Estado varchar(50)
)

create table Vehiculo (
    int_Id int identity,
    str_placa  varchar(15), --placa
    str_Modelo varchar(100) not null,
    date_ult_mantenimiento  date,
    int_km_ultimo_mantenimiento int, 
    int_Estado int  not null -- (1- activo, 2- inactivo, 3- taller, 4 otro)
)

create table Estado_Conductor(
    int_Id int identity,
    str_Estado varchar(50)
)



create table Conductor(
    int_Id_user  int not null,
    int_Id_vehiculo int not null,
    int_Estado int -- (1- activo, 2- inactivo, 3- incapacitado)     
)

create table Estado_Cuenta(
    int_Id int identity,
    str_Estado varchar(25)
)

create table Banco(
    int_Id  int not null,-- numero de la cta
    str_Titular_ int not null,
    int_Tipo int not null
    int_Estado int -- Estado cuenta (1- activo, 2- inactivo, 3- incapacitado)     
)


create table Cliente(
    int_Id int identity,
    str_Nombre varchar(100) not null,
    int_Documento int,
    int_user_Responsable int,
    str_Direccion varchar(100),
    str_Coordenadas varchar(100),
    int_recurrencia_pagos int
)

--tabla cruzada vehiculo cliente
create table VeCli(
    int_Id_vehiculo int not null,
    int_Id_Cliente int not null,
    date_fecha_asignacion not null,
    date_fecha_terminacion,
    str_Observaciones varchar(100)
)
