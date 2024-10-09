# Alias en SQL
/*
En SQL podemos renombrar el enunciado de una columna
con el motivo de que quede mejor en un reporte.
Nota: No se cambia realmente el nombre de la columna sino que temporalmente cambia el texto del enunciado.
Implementamos un alias con la palabra reservada **AS**
(se puede omitir)
*/

SELECT
        prdNombre AS Producto,
        prdPrecio AS Precio,
        mkNombre AS Marca,
        catNombre AS Categoría
FROM productos
     JOIN marcas
      ON productos.idMarca = marcas.idMarca
     JOIN categorias
      ON productos.idCategoria = categorias.idCategoria;

SELECT
        idProducto AS id,
        prdNombre AS Producto,
        format(prdPrecio, 2) AS 'Precio Contado',
        format(prdPrecio * 1.05, 2) AS 'Precio Lista',
        mkNombre AS Marca,
        catNombre AS Categoría
FROM productos AS p
     JOIN marcas AS m
       ON p.idMarca = m.idMarca
     JOIN categorias AS c
       ON p.idCategoria = c.idCategoria;
