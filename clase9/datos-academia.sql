# alta de datos en tabla academia

-- inserción en tabla areas
insert into areas
values
    ( default, 'Programación Web' ),
    ( default, 'Diseño Web' ),
    ( default, 'Diseño de interfases' ),
    ( default, 'Basees de datos' ),
    ( default, 'Inteligencia Artificial' );

-- inserci´´on en tabla niveles
insert into niveles
values
    ( default, 'Básico' ),
    ( default, 'Intermedio' ),
    ( default, 'Avanzado' ),
    ( default, 'Experto' );

-- inserci´´on en tabla alumnos
INSERT INTO alumnos
VALUES
    (default,'García','Javier',25852410,'jgarcia@gmail.com', '2008-12-12'),
    (default,'González','Mónica',36520147,'mgonzalez@gmail.com','2009-09-30'),
    (default,'Martínez','Vanesa',3574191,'vmartinez@gmail.com','2006-12-12'),
    (default,'Álvarez','Fernando',32912457,'falvarez@gmail.com','2007-11-02');

-- inserción de datos en tabla cursos
insert into cursos
values
    ( default, 'Desarrollo web con HTML', 25000, 1, 1 ),
    ( default, 'Diseño UX/UI', 30000, 3, 2 ),
    ( default, 'Javascript desde 0', 25000, 1, 1 ),
    ( default, 'Introducción a Bases de datos', 25000, 4, 1 ),
    ( default, 'Programación en PHP', 40000, 1, 2 ),
    ( default, 'Maquetador web', 35000, 1, 2 ),
    ( default, 'Programación con Laravel', 50000, 1, 4 );

-- inserción de datos tabla cursos_alumnos
insert into cursos_alumnos
(id, idCurso, idAlumno, activo)
values
    ( default, 1, 2, 1 ),
    ( default, 1, 1, 1 ),
    ( default, 4, 4, 1 ),
    ( default, 4, 3, 1 ),
    ( default, 4, 2, 1 );

