# Modificaciones de estructura en una tabla

## cambiar el nombre de una columna

    ALTER TABLE nombreTabla  
      CHANGE nombreActual nombreNuevo tipoDato características

> Tener en cuenta que debemos repetir el tipo de datos si no dará error
> También debemos tener en cuenta establecer la característica de nulidad si no dejará nulo

## cambiar tipos de datos de una columna

    ALTER TABLE nombreTabla  
      MODIFY nombreColumna tipoDato características;

> Tener en cuenta establecer la característica de nulidad si no dejará nulo

## Agregar una nueva columna al final de la tabla

    ALTER TABLE nombreTabla  
      ADD nombreColumna tipoDato características;

## Agregar una nueva columna luego de una columna existente

    ALTER TABLE nombreTabla  
      ADD nombreColumna tipoDato características  
      AFTER columnaExistente; 

## Eliminar una columna

    ALTER TABLE nombreTabla  
      DROP nombreColumna;

## Agregar clave primaria

    ALTER TABLE nombreTabla  
      MODIFY nombreColumna tipoDato primary key auto_increment not null;

## Agregar clave foránea

    ALTER TABLE nombreTabla
        ADD CONSTRAINT fk_nombre  -- opcional
        FOREIGN KEY( colFK )
        REFERENCES nombreTabla2  ( colPK );
