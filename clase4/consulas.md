# Consultas en SQL

## Consultas a servidor de base de datos

    -- listar todas las bases de datos  
    SHOW DATABASES;  

    -- Listar todas las tablas dentro de una base de datos  
    SHOW TABLES;  

    -- Mostrar la estructura de una tabla  
    DESCRIBE nombreTabla;  

> La palabra reservada más importante o al menos la más utilizada para consultas es la palabra reservada **SELECT**

    -- Mostrar la base de datos activa  
    SELECT DATABASE();  


## Consultas a una tabla dentro de una base de datos

> Para realizar consultas a una tabla 
> utilizamos la palabra reservada **SELECT** 
> acompañada de la palabra **FROM**  

    SELECT * FROM nombreTabla;    

    SELECT * FROM destinos;  

> Cuándo hacemos **SELECT * FROM nombreTabla** 
> a traemos todas las columnas de esa tabla  

> Si queremos traer los datos de **algunas** columnas de una tabla 
> debemos mencionar los nombres de estas columnas separadas por comas
> ( en lugar del * )  

    SELECT nombreCol3, nombreCol5  
      FROM nombreTabla;  

    SELECT aeropuerto, precio    
      FROM destinos;  

### Orden de resultados

> Para ordenar los resultados de una columna 
> utilizamos **ORDER BY** 

    SELECT aeropuerto, precio    
      FROM destinos     
      ORDER BY aeropuerto;  

    SELECT aeropuerto, precio    
      FROM destinos     
      ORDER BY precio;  

    SELECT nombre, apellido, alta  
      FROM  personas  
      ORDER BY alta DESC;  

    SELECT aeropuerto, precio     
      FROM destinos    
      ORDER BY idRegion, precio;  

### Filtrado de resultados 

> Filtrar resultados de una consulta 
> significa traer únicamente los registros que cumplan con una condición
> Para implementar un filtro utilizamos la palabra reservada **WHERE**  
> seguido de una condición

> Traer todos los destinos con un precio hasta 8600   

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE precio <= 8600;  

> Traer todos los destinos con un precio 
> entre 6500 y 8600

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE precio >= 6500   
        AND precio <= 8600; 
  
    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE precio BETWEEN 6500 AND 8600;   
  
> Traer todos los destinos de la región 5  

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE idRegion = 5;

> Traer todos los destinos de la región 5 
> y además los de la región 7 

    SELECT aeropuerto, precio   
      FROM destinos  
      WHERE idRegion = 5  
      OR idRegion = 7;  

    SELECT aeropuerto, precio   
      FROM destinos  
      WHERE idRegion IN( 5, 7 );  
