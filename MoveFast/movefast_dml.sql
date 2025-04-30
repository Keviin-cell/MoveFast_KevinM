-- Inserción en la tabla Sucursales
INSERT INTO Sucursales (sID, sNombre, sCiudad, sUbicacion)
VALUES
(1, 'Sucursal Bogotá', 'Bogotá', 'Cra 10 #20-30'),
(2, 'Sucursal Medellín', 'Medellín', 'Calle 50 #45-60'),
(3, 'Sucursal Cali', 'Cali', 'Av. Roosevelt #38-10'),
(4, 'Sucursal Barranquilla', 'Barranquilla', 'Cra 46 #74-85'),
(5, 'Sucursal Cartagena', 'Cartagena', 'Av. Pedro de Heredia #56-70'),
(6, 'Sucursal Bucaramanga', 'Bucaramanga', 'Cra 27 #36-18'),
(7, 'Sucursal Manizales', 'Manizales', 'Calle 19 #23-45'),
(8, 'Sucursal Pereira', 'Pereira', 'Av. Circunvalar #15-55'),
(9, 'Sucursal Ibagué', 'Ibagué', 'Calle 60 #12-20'),
(10, 'Sucursal Villavicencio', 'Villavicencio', 'Av. 40 #30-90'),
(11, 'Sucursal Cali Sur', 'Cali', 'Carrera 83C #23-45');

-- Inserción en la tabla Cliente
INSERT INTO Cliente (cID, cNombres, cApellidos, cTelefono)
VALUES
(1, 'Carlos', 'Ramírez', '3214567890'),
(2, 'Laura', 'Gómez', '3112345678'),
(3, 'Andrés', 'Martínez', '3109876543'),
(4, 'María', 'Rodríguez', '3158765432'),
(5, 'Camilo', 'Pérez', '3123456789'),
(6, 'Ana', 'Torres', '3117654321'),
(7, 'Juan', 'López', '3101234567'),
(8, 'Diana', 'Castro', '3134567890'),
(9, 'Pedro', 'Morales', '3161234567'),
(10, 'Natalia', 'Vargas', '3145678901');

-- Inserción en la tabla Vehiculos
INSERT INTO Vehiculos (vMatricula, vSucursalID, vEstado, vModelo, vVecesAlquilado)
VALUES
('ABC-101', 1, 'Disponible', 2020, 1),
('XYZ-202', 2, 'Alquilado', 2018, 3),
('DEF-303', 3, 'Disponible', 2022, 2),
('GHI-404', 4, 'Disponible', 2019, 0),
('JKL-505', 5, 'Alquilado', 2017, 5),
('MNO-606', 6, 'Disponible', 2021, 12),
('PQR-707', 7, 'Alquilado', 2015, 8),
('STU-808', 8, 'Disponible', 2023, 10),
('VWX-909', 9, 'Disponible', 2024, 2),
('YZA-010', 10, 'Disponible', 2020, 9),
('YOJ-234', 11, 'Disponible', 2010, 6),
('DOF-176', 3, 'Alquilado', 2013, 8);


-- Inserción en la tabla Alquileres
INSERT INTO Alquileres (aID, aFechaInicial, aFechaFinal, aCliente, aVehiculo)
VALUES
(1, '2024-03-01', '2024-03-10', 1, 'XYZ-202'),
(2, '2024-03-05', '2024-03-12', 2, 'JKL-505'),
(3, '2024-03-10', '2024-03-20', 3, 'PQR-707'),
(4, '2024-03-15', '2024-03-25', 4, 'XYZ-202'),
(5, '2024-03-20', '2024-03-30', 5, 'JKL-505'),
(6, '2024-04-01', '2024-04-10', 6, 'PQR-707'),
(7, '2024-04-05', '2024-04-15', 7, 'XYZ-202'),
(8, '2024-04-10', '2024-04-20', 8, 'PQR-707'),
(9, '2024-04-15', '2024-04-25', 9, 'JKL-505'),
(10, '2024-04-20', '2024-04-30', 10, 'XYZ-202'),
(11, '2024-04-23', NULL, 6, 'DOF-176'),
(12, '2024-04-23', NULL, 9, 'MNO-606');

-- Inserción en la tabla Pagos
INSERT INTO Pagos (pID, pCliente, pMonto)
VALUES
(1, 1, 250000.00),
(2, 2, 300000.00),
(3, 3, 275000.00),
(4, 4, 260000.00),
(5, 5, 320000.00),
(6, 6, 280000.00),
(7, 7, 310000.00),
(8, 8, 290000.00),
(9, 9, 295000.00),
(10, 10, 305000.00);
