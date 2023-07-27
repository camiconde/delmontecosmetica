create database  delmontecosmetica;
use delmontecosmetica;

create table productos (
id INT auto_increment,
nombre varchar (255),
precio decimal (10 , 2),
categoria_id int,
primary key(id)
);

create table categoria (
id_cat int auto_increment,
nombre varchar(255),
primary key (id_cat)
);
drop table usuario;
create table usuario (
id_user int auto_increment,
nombre varchar(255),
apellido varchar(255),
email varchar(255),
primary key (id_user)
);

alter table productos
add foreign key (categoria_id) references categoria(id_cat);

insert into categoria (nombre) values
('solidos'),
('facial');

insert into productos (nombre, precio, categoria_id) values
('shampoo avena', 1800, 1),
('shampoo manzanilla', 1800, 1),
('shampoo ortiga y romero', 1800, 1),
('serum', 3500, 2),
('crema anti-age', 4000, 2);

select
productos.id,
productos.nombre as nombre_prod, precio, categoria_id from productos;

insert into usuario (nombre, apellido, email) values
('camila', 'conde', 'emacamilaconde@gmail.com');

select
usuario.nombre as nombre_usuario, apellido, email from usuario
