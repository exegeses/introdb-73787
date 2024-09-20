# Insertar datos (registros) dentro de una tabla

> En SQL tenemos tres maneras principales de insertar datos en una tabla
> Estas tres maneras comienzan con
> **INSERT INTO nombreTabla**


## Sintáxis usando SET 

> Sintáxis: 
 
    INSERT INTO nombreTabla   
        SET  
            nombreCampo = valor,  
            nombreCampo2 = valor2,  
            nombreCampo3 = valor3,  
            nombreCampoX = valorX;  

> Ejemplo práctico 

    INSERT INTO personas  
        SET  
            id = 1,  
            apellido = 'García',  
            nombre = 'Javier',  
            dni = 25852410,  
            alta = '2008-12-12';


    INSERT INTO personas  
        SET   
            apellido = 'González',  
            nombre = 'Mónica',  
            dni = 36520147,  
            alta = '2005-09-30';

 
## Sintáxis completa ( mencionamos las columnas ) 

> Sintáxis: 

    INSERT INTO nombreTabla  
        ( campo2, campo3, campo4, campoX )  
      VALUES  
        ( valor2, valor3, valor4, valorX );


> Ejemplo práctico 

    INSERT INTO personas  
        ( apellido, nombre, dni, alta )  
      VALUES  
        ( 'Martínez', 'Vanesa', 35741951, '2006-06-21' );

 
 
## Sintáxis simplificada ( NO mencionamos las columnas ) 

> Sintáxis: 

    INSERT INTO nombreTabla  
      VALUES  
        ( valorPK, valor2, valor3, valor4, valorX );

> Ejemplo práctico 
 
    INSERT INTO personas  
      VALUES  
        ( DEFAULT, 'Alvarez', 'Fernado', 32912457, '2007-11-02' );
