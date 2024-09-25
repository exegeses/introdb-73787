# Modificación de registros dentro de una tabla

> Para modificar los datos dentro de una tabla 
> utilizamos el comando **UPDATE** 

> Sintáxis: 

    UPDATE nombreTabla  
      SET  
            nombreCampo = valor,
            nombreCampo2 = valor2
      WHERE colPK = valorID;  

> Ejemplo práctico:

    UPDATE aerolineas  
      SET  
            aerolinea = 'Aerolíneas Argentinas'  
      WHERE id = 1;  

    UPDATE personas  
      SET  
            nombre = 'Vanessa',  
            alta = '2006-06-22'
      WHERE id = 4;  

    UPDATE productos   
      SET precio = precio + precio * 0.05  
      WHERE idProveedor = 16;

    UPDATE productos   
      SET precio = precio * 1.05  
      WHERE idProveedor = 16;
