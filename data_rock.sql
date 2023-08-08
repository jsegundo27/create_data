use data_rock

create table banda(
   id_banda int primary key AUTO_INCREMENT,
   banda varchar(200) 
)

create table musico(
    id_musico int PRIMARY KEY AUTO_INCREMENT,
    nombre varchar(250) NOT NULL,
    apellido varchar(250) NOT NULL,
    fecha_nacimiento date,
    id_banda int,
    FOREIgn KEY (id_banda) references banda(id_banda)
)

create table pruheba(){
  id int ,
  nombre varchar(50)
}

ALTER TABLE banda ADD descripcion VARCHAR (350) NOT NULL;
ALTER TABLE musico modify nombre VARCHAR(300);
ALTER TABLE banda DROP descripcion;

TRUNCATE TABLE pruheba;
delete TABLE pruheba;