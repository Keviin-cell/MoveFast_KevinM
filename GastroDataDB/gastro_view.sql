-- 1. Crear una vista que presente el consumo de cada cliente
-- (nombre, bebida, platillo, fecha y montos)
CREATE VIEW vista_consumo_cliente AS
SELECT 
    c.Nombre, 
    c.Apellido, 
    b.Nombre AS Bebida, 
    p.Nombre AS Platillo,
    f.Fecha_factura, 
    (b.Importe + p.Importe) AS Total
FROM Factura f
JOIN Cliente c ON f.id_Cliente = c.id_Cliente
JOIN Bebida b ON f.id_Bebida = b.id_Bebida
JOIN Platillo p ON f.id_Platillo = p.id_Platillo;


-- 2. Crear una vista que presente el mesero, el número de factura que atendió, la fecha y la mesa
CREATE VIEW vista_facturacion_mesero AS
SELECT 
    m.Nombre AS Mesero, 
    m.Apellido1, 
    m.Apellido2, 
    f.id_Factura, 
    f.Fecha_factura, 
    me.id_Mesa
FROM Factura f
JOIN Mesero m ON f.id_Mesero = m.id_Mesero
JOIN Mesa me ON f.id_Mesa = me.id_Mesa;


-- 3. Crear una vista con el valor total de compra por cada cliente en todas sus facturas
-- (platillo + bebida)
CREATE VIEW vista_total_cliente AS
SELECT 
    c.id_Cliente, 
    c.Nombre, 
    c.Apellido, 
    SUM(b.Importe + p.Importe) AS Total_Compra
FROM Factura f
JOIN Cliente c ON f.id_Cliente = c.id_Cliente
JOIN Bebida b ON f.id_Bebida = b.id_Bebida
JOIN Platillo p ON f.id_Platillo = p.id_Platillo
GROUP BY c.id_Cliente, c.Nombre, c.Apellido;


-- 4. Convertir a vista la consulta 6: total consumo del cliente Manuel Pedroza Gonzalez
CREATE VIEW vista_consumo_manuel AS
SELECT 
    c.Nombre, 
    c.Apellido, 
    SUM(p.Importe + b.Importe) AS Total_Consumo
FROM Factura f
JOIN Cliente c ON f.id_Cliente = c.id_Cliente
JOIN Platillo p ON f.id_Platillo = p.id_Platillo
JOIN Bebida b ON f.id_Bebida = b.id_Bebida
WHERE c.Nombre = 'Manuel' AND c.Apellido = 'Pedroza Gonzalez'
GROUP BY c.Nombre, c.Apellido;


-- 4. Convertir a vista la consulta 7: mesas utilizadas al menos una vez
CREATE VIEW vista_mesas_utilizadas AS
SELECT DISTINCT 
    me.id_Mesa, 
    me.Ubicacion, 
    me.numComensales
FROM Factura f
JOIN Mesa me ON f.id_Mesa = me.id_Mesa;
