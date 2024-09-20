# Creación de tablas en SQL

> Para crear una tabla dentro de una base de datos 
> utilizamos el comando **CREATE TABLE**

> Sintáxis: 
 
    CREATE TABLE nombre  
    (  
        nombreCampo tipoDato características,
        nombreCampo2 tipoDato características,
        nombreCampo3 tipoDato características,
        nombreCampo4 tipoDato características
    ); 


> Ejemplo práctico: 

    CREATE TABLE personas  
    (  
        id tinyint unsigned auto_increment primary key not null,
        apellido varchar(50) not null,
        nombre varchar(50) not null,
        dni int unsigned unique not null, 
        alta date not null 
    );
