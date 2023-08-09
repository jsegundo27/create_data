create database db_pruheba_videorent

use db_pruheba_videorent

create table urbanizacion(
    codurba int PRIMARY KEY AUTO_INCREMENT,
    urbanizacion varchar(250)
)

create table cliente(
    codigo int PRIMARY KEY AUTO_INCREMENT,
    nombres varchar(300),
    direccion varchar(300),
    telefono varchar(300),
    codurba INT,
     
     FOREIGN KEY (codurba) references urbanizacion(codurba)
     
)

create table video(
   codvideo int PRIMARY KEY AUTO_INCREMENT,
   titulo varchar(300),
   anho varchar(300),
   cantidad varchar(300),
   codgenero int,
   codidioma int,
   codformato int,
   FOREIGN key (codgenero) references genero(codgenero),
   FOREIGN key (codidioma) references idioma(codidioma),
   FOREIGN key (codformato) references formato(codformato)


)

create table formato(
    codformato int PRIMARY KEY AUTO_INCREMENT,
    formato varchar(300)
)

create table idioma(
    codidioma int PRIMARY KEY AUTO_INCREMENT,
    idioma VARCHAR(300)
)

create table genero(
    codgenero int PRIMARY KEY AUTO_INCREMENT,
    genero varchar(300)
)

create table ficha(
    codficha int PRIMARY KEY AUTO_INCREMENT,
    codcliente int,
    codvideo int,
    fechaalquiler date,
    fechaentrega date,
    costo numeric(9,2),
    mora numeric(9,2),
    comemtario varchar(250),
    FOREIGN key (codcliente) references cliente(codigo),
    FOREIGN key (codvideo) references video(codvideo)
)