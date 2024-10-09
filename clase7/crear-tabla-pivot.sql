-- creación de tabla pivot
/*
Esta es una tabla intermedia que nos servirá
para relacionar la tabla productos con la tabla proveedores
*/
create table productos_proveedores
(
    idPP mediumint unsigned auto_increment primary key not null,
    idProducto mediumint unsigned not null,
    idProveedor  tinyint unsigned not null,
    foreign key ( idProducto ) references productos ( idProducto ),
    foreign key ( idProveedor ) references proveedores ( idProveedor )
);

-- inserción de datos
insert into productos_proveedores
VALUES
    ( DEFAULT, 1, 1 ),
    ( DEFAULT, 1, 4 ),
    ( DEFAULT, 2, 1 ),
    ( DEFAULT, 2, 5 ),
    ( DEFAULT, 3, 2 ),
    ( DEFAULT, 3, 4 ),
    ( DEFAULT, 4, 4 ),
    ( DEFAULT, 4, 2 ),
    ( DEFAULT, 5, 3 ),
    ( DEFAULT, 5, 5 );
