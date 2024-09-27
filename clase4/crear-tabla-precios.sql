# creación de tabla precios

/*
    Esta tabla es un ejemplo teórico
    para explicar por qué debemos usar decimal
    en vez de Float o Double a la hora de almacenar precios
*/

create table precios
(
    id tinyint unsigned auto_increment primary key not null,
    aproximado float not null,
    exacto decimal(10,2) not null
);

insert into precios
    values
            ( DEFAULT, 20.5, 20.5 ),
            ( DEFAULT, 22.2, 22.2 ),
            ( DEFAULT, 22.5, 22.5 ),
            ( DEFAULT, 13.8, 13.8 ),
            ( DEFAULT, 23.4, 23.4 ),
            ( DEFAULT, 0, 0 ),
            ( DEFAULT, 10, 10 );

-- demostración
SELECT SUM(aproximado), SUM(exacto)
    FROM precios;