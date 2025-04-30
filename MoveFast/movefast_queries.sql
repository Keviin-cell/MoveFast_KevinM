-- 4. Obtener los vehículos disponibles en una ciudad específica 
SELECT v.vMatricula, v.vModelo, s.sNombre, s.sCiudad
FROM Vehiculos v
JOIN Sucursales s ON v.vSucursalID = s.sID
WHERE v.vEstado = 'Disponible' AND s.sCiudad = 'Cali';


-- 5. Listar los alquileres activos con información del cliente y vehículo
-- Activos: fecha final es NULL o está en el futuro
SELECT a.aID, a.aFechaInicial, a.aFechaFinal,
       c.cNombres, c.cApellidos, v.vMatricula, v.vModelo
FROM Alquileres a
JOIN Cliente c ON a.aCliente = c.cID
JOIN Vehiculos v ON a.aVehiculo = v.vMatricula
WHERE a.aFechaFinal IS NULL OR a.aFechaFinal > CURRENT_DATE;


-- 6. Calcular los ingresos totales por sucursal considerando solo vehículos con más de 3 alquileres
SELECT s.sNombre, s.sCiudad, SUM(p.pMonto) AS TotalIngresos
FROM Vehiculos v
JOIN Sucursales s ON v.vSucursalID = s.sID
JOIN Alquileres a ON v.vMatricula = a.aVehiculo
JOIN Pagos p ON a.aCliente = p.pCliente
WHERE v.vVecesAlquilado > 3
GROUP BY s.sNombre, s.sCiudad;


-- 7. Filtrar solo vehículos con más de 5 alquileres (usando subconsulta)
SELECT *
FROM Vehiculos
WHERE vMatricula IN (
    SELECT vMatricula
    FROM Vehiculos
    WHERE vVecesAlquilado > 5
);


-- 8. Sumar los montos de todos los pagos asociados
SELECT SUM(pMonto) AS TotalPagado
FROM Pagos;
