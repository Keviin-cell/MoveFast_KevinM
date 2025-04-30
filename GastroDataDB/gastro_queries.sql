-- 1. Obtener el nombre y apellido de los clientes que hayan consumido un platillo específico
SELECT c.Nombre, c.Apellido
FROM Cliente c
JOIN Factura f ON c.id_Cliente = f.id_Cliente
WHERE f.id_Platillo = 3;  


-- 2. Obtener el nombre y apellido de los clientes que hayan consumido arroz a la marinera
SELECT c.Nombre, c.Apellido
FROM Cliente c
JOIN Factura f ON c.id_Cliente = f.id_Cliente
JOIN Platillo p ON f.id_Platillo = p.id_Platillo
WHERE p.Nombre = 'Arroz a la marinera';


-- 3. Listar el nombre del mesero y la fecha en la que atendió una mesa 10 ubicada en el segundo piso
SELECT m.Nombre, m.Apellido1, m.Apellido2, f.Fecha_factura
FROM Factura f
JOIN Mesero m ON f.id_Mesero = m.id_Mesero
JOIN Mesa me ON f.id_Mesa = me.id_Mesa
WHERE me.id_Mesa = 10 AND me.Ubicacion = 'Segundo Piso';


-- 4. Mostrar el nombre de los clientes junto con los nombres de las bebidas que consumieron en sus facturas
SELECT c.Nombre, c.Apellido, b.Nombre AS Bebida
FROM Factura f
JOIN Cliente c ON f.id_Cliente = c.id_Cliente
JOIN Bebida b ON f.id_Bebida = b.id_Bebida;


-- 5. Consultar todas las facturas que incluyan platillos con un importe mayor a $300000
SELECT f.id_Factura, c.Nombre, c.Apellido, p.Nombre AS Platillo, p.Importe
FROM Factura f
JOIN Cliente c ON f.id_Cliente = c.id_Cliente
JOIN Platillo p ON f.id_Platillo = p.id_Platillo
WHERE p.Importe > 300000;


-- 6. Listar el total de consumo (importe de platillos y bebidas) del cliente llamado Manuel Pedroza Gonzalez
SELECT c.Nombre, c.Apellido, SUM(p.Importe + b.Importe) AS Total_Consumo
FROM Factura f
JOIN Cliente c ON f.id_Cliente = c.id_Cliente
JOIN Platillo p ON f.id_Platillo = p.id_Platillo
JOIN Bebida b ON f.id_Bebida = b.id_Bebida
WHERE c.Nombre = 'Manuel' AND c.Apellido = 'Pedroza Gonzalez'
GROUP BY c.Nombre, c.Apellido;


-- 7. Listar las mesas que han sido utilizadas al menos una vez, indicando su ubicación y número de comensales
SELECT DISTINCT me.id_Mesa, me.Ubicacion, me.numComensales
FROM Factura f
JOIN Mesa me ON f.id_Mesa = me.id_Mesa;
