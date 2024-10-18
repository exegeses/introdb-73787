# proyecto academia

create database academia
    CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_unicode_ci;

use academia;

create table areas
(
    idArea tinyint unsigned auto_increment not null,
    area varchar(45) not null,
    primary key( idArea ),
    unique (area)
);

create table niveles
(
    idNivel tinyint unsigned auto_increment not null,
    nivel varchar(45) not null,
    primary key( idNivel ),
    unique (nivel)
);

create table cursos
(
    idCurso smallint unsigned primary key auto_increment not null ,
    curso varchar(60) unique not null,
    matricula decimal(10,2) unsigned not null,
    idArea tinyint unsigned not null,
    idNivel tinyint unsigned not null,
    foreign key ( idArea ) references areas ( idArea ),
    foreign key ( idNivel ) references niveles ( idNivel )
);


create table alumnos
(
    idAlumno smallint unsigned primary key auto_increment not null,
    apellido varchar(45) not null,
    nombre varchar(45) not null,
    dni bigint unsigned unique not null,
    email varchar(60) not null,
    nacimiento date not null
);

create table cursos_alumnos
(
    id int unique auto_increment primary key not null,
    idCurso smallint unsigned not null,
    idAlumno smallint unsigned not null,
    activo boolean not null,
    foreign key ( idCurso ) references cursos ( idCurso ),
    foreign key ( idAlumno ) references alumnos ( idAlumno )
);