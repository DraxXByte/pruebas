drop database if exists CalculusPSBD;
create database CalculusPSBD;
use CalculusPSBD;


Create table TipoProyecto (
idTipoPro int primary key not null auto_increment,
TipoPro varchar(45) not null
);

create table Usuario(
idUsuario int primary key not null auto_increment,
Nickname varchar(45) not null,
Contra varchar(45) not null
);

create table Ubicacion(
idUbicacion int primary key not null auto_increment,
Calle varchar(45) not null,
Colonia varchar(45) not null,
Municipio varchar(45) not null,
Ciudad varchar(45) not null,
Pais varchar(45) not null,
Coordenadas varchar(45) not null
);

create table Arquitecto(
idArquitecto int primary key not null auto_increment,
Nombre varchar(45) not null,
Edad varchar(45) not null,
Carrera varchar(45) not null,
Puesto varchar(45) not null,
idUsufk int not null,
contraseña varchar(45) not null,
usuar_io varchar(45) not null,
foreign key (idUsufk)references Usuario(idUsuario) on update cascade on delete cascade
);

create table Empresa(
idEmpresa int primary key not null auto_increment,
NombreEmpr varchar(45) not null,
idUsuariofks int not null,
idUbicacionfks int not null,
foreign key(idUsuariofks)references Usuario(idUsuario) on update cascade on delete cascade,
foreign key(idUbicacionfks)references Ubicacion(idUbicacion) on update cascade on delete cascade
);

create table Proyecto(
idProyecto int primary key not null auto_increment,
Nombre varchar(45) not null,
Descripcion varchar(45) not null,
FecIn date,
FecFin date,
idTipoProy int not null,
idubicacionf int not null,
idArq int not null,
idUsuariof int not null,
idEmpredfk int not null,
foreign key (idTipoProy)references TipoProyecto(idTipoPro) on update cascade on delete cascade,
foreign key (idUsuariof)references Usuario(idUsuario) on update cascade on delete cascade,
foreign key (idubicacionf)references Ubicacion(idUbicacion) on update cascade on delete cascade,
foreign key (idArq)references Arquitecto(idArquitecto) on update cascade on delete cascade,
foreign key (idEmpredfk)references Empresa(idEmpresa) on update cascade on delete cascade
);

select * from Proyecto;
select * from Arquitecto;
