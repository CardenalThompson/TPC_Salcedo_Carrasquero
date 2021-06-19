--drop database Ecommerce
use master
create database Ecommerce
go 
use Ecommerce
go
create table Marca
(
   Id int not null primary Key identity (1,1),
   Nombre varchar(50) not Null
)
go
create table Categoria
(
  Id int not null primary Key identity (1,1),
  Nombre varchar(50) not Null
)

go
create table TipoUsuario (
Id tinyint not null primary Key identity (1,1),
Nombre varchar(50) not Null
)
go

create table Usuarios (
  Id bigint not null primary Key identity (1,1),
  NombreUsuario varchar(15) not Null unique,
  Contraseña varchar (200) not null,
  IdTipoUsuario tinyint not null foreign key references TipoUsuario(Id),
)

go

create table DatosPersonales (
   Idusuario bigint not null primary Key,
   Nombre varchar(100) not Null,
   Apellido varchar(100) not Null,
   DNI varchar (10) not null  Check (not DNI like '%[^0-9]%'),
   FechaNac date not null check(FechaNac<=getdate() and (Year(FechaNac)>1900)),
   Telefono varchar(20) not null check (not Telefono like '%[^0-9]%'),
   Direccion varchar(100) not null,
   Email varchar (100) not null
)
--"not DNI like '%[^0-9]%'"   que DNI solo contenga caracteres numericos
go
alter table DatosPersonales
add constraint FK_DatosPersonales_IdUsuario foreign key (IdUsuario)references Usuarios (Id)
go

create table Venta (
  Id bigint not null primary Key identity (1,1),
  IdUsuario bigint not null foreign key references  Usuarios (Id),
  Fecha date not null check(Fecha<=getdate()) default(getdate()),
  Importe money not null check (Importe >0)
)
go

create table Producto (
   Id int not null primary Key identity (1,1),
   UrlImagen varchar (900),
   Nombre varchar(50) not Null,
   Descripcion varchar (100) not null,
   idMarca int not null foreign key references Marca(id),
   idCategoria int not null foreign key references Categoria(id),
   Estado bit not null default (1),
   Precio money not  null check (Precio >0),
   Stock int not null
)
go

create table DetalleVenta (
   IdProducto int not null foreign key references Producto (Id),
   IdVenta bigint not null foreign key references Venta(Id),
   Precio money not  null check (Precio >0), 
   Cantidad tinyint not null check (cantidad >0),
   UrlImagen varchar (900),
   Nombre varchar(50) not Null,
   primary key (IdProducto, IdVenta)
)

insert into Marca(Nombre) values('samsumg')
insert into Marca(Nombre) values('Aple')
insert into Marca(Nombre) values('Motorola')
insert into Marca(Nombre) values('Lenovo')


insert into Categoria(Nombre) values('Celulares')
insert into Categoria(Nombre) values('Televisores')
insert into Categoria(Nombre) values('Notebooks')
insert into Producto(UrlImagen, Nombre,Descripcion,idMarca,idCategoria,Estado, Precio,Stock)

values('https://http2.mlstatic.com/D_NQ_NP_2X_911598-MLA43469097950_092020-F.webp','Moto Edge','Nueva generacion',3,1,1,69000,4)

select *from Marca
select *from producto

  select P.Id idpro, P.UrlImagen, P.Nombre,P.Descripcion,M.id idMarca,M.Nombre marca,C.Id idCategoria,C.Nombre Cat ,P.Estado estado, P.Precio precio,P.Stock stock from Producto P ,Marca M, Categoria C where P.idmarca=M.id AND	P.IdCategoria=C.id
