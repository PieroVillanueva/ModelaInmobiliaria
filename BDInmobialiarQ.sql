create database Inmobiliaria;
use Inmobiliaria; 
create table Ciudad(
id int identity(1,1) not null,
nombre varchar(30),
estado bit,
constraint pk_iC primary key(id),
)

create table TipoInmueble(
id int identity(1,1) not null,
nombre varchar(30),
constraint pk_iTiIn primary key(id)
)

create table SitioInteres(
id int identity(1,1) not null,
nombre varchar(50),
direccion varchar(60),
constraint pk_iSiIn primary key(id)
)

create table Sector(
id int identity(1,1) not null,
nombre varchar(50),
estado bit,
id_ciu int,
constraint pk_iS primary key(id),
constraint fk_ic foreign key(id_ciu) references Ciudad(id),
)

create table Propietario(
id int identity(1,1) primary key,
dni int,
nombre varchar (50),
telefono int,
direccion varchar (70),
correo varchar (30)
)

create table Inmueble(
id int identity(1,1) not null,
id_tip int,
id_sec int,
id_prop int,
direccion varchar(60),
estado varchar(10),
precio int,
precioMinimo int,
parcela varchar(20),
areaConstruida varchar(20),
cantPisos int,
ubicaPiso varchar(20),
cantHabitacion int,
cantBano int,
piscina bit,
garage bit,
jardin bit,
constraint pk_iI primary key(id),
constraint fk_iT foreign key(id_tip) references TipoInmueble(id),
constraint fk_is foreign key(id_sec) references Sector(id),
constraint fk_ip foreign key(id_prop) references Propietario(id),
)


create table SitioInmueble(
id_in int,
id_si int,
distancia int,
primary key(id_in,id_si),
foreign key(id_in) references Inmueble(id),
foreign key(id_si) references SitioInteres(id)
)
