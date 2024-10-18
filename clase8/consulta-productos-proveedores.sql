# consulta a través de una tabla intermedia (pivot)

-- obtener nombre del producto de la tabla productos
-- y nombre del proveedor de la tabla proveedores

-- técnica table relation
SELECT prdNombre AS Producto,
       prvNombre AS Proveedor
  FROM proveedores, productos, productos_proveedores
  WHERE proveedores.idProveedor = productos_proveedores.idProveedor
   AND  productos.idProducto = productos_proveedores.idProducto;

-- técnica table join
SELECT prdNombre AS Producto,
       prvNombre AS Proveedor
  FROM proveedores
  JOIN productos_proveedores
    ON proveedores.idProveedor = productos_proveedores.idProveedor
  JOIN productos
    ON productos.idProducto = productos_proveedores.idProducto;

-- ------
-- obtener nombre del producto de la tabla productos
-- nombre de la marca de la tabla marcas
-- nombre de la categoría de la tabla categorías
-- y nombre del proveedor de la tabla proveedores

-- técnica table join
SELECT prdNombre AS Producto,
       mkNombre AS Marca,
       catNombre AS Categoría,
       prvNombre AS Proveedor
FROM proveedores
    JOIN productos_proveedores
      ON proveedores.idProveedor = productos_proveedores.idProveedor
    JOIN productos
      ON productos.idProducto = productos_proveedores.idProducto
    JOIN marcas
      ON productos.idMarca = marcas.idMarca
    JOIN categorias
      ON productos.idCategoria = categorias.idCategoria;

-- técnica table relation
SELECT prdNombre AS Producto,
       mkNombre AS Marca,
       catNombre AS Categoría,
       prvNombre AS Proveedor
FROM proveedores, productos, productos_proveedores, marcas, categorias
WHERE proveedores.idProveedor = productos_proveedores.idProveedor
  AND productos.idProducto = productos_proveedores.idProducto
  AND productos.idMarca = marcas.idMarca
  AND productos.idCategoria = categorias.idCategoria;