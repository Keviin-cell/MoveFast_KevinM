-- Tuplas en tabla Cliente
INSERT INTO Cliente (id_Cliente, Nombre, Apellido, Observaciones)
VALUES
(1, 'Íngrid', 'Quintanilla', 'Cliente frecuente, prefiere bebidas frías'),
(2, 'María', 'Morales', 'Sin observaciones'),
(3, 'Agapito', 'Lluch', 'Alérgico al marisco'),
(4, 'Palmira', 'Barón', 'Sin observaciones'),
(5, 'Francisco Javier', 'Hernandez', 'Solicita silla cerca a la ventana'),
(6, 'Hipólito', 'Prieto', 'Prefiere comida vegetariana'),
(7, 'Fernando', 'Bauzà', 'Sin observaciones'),
(8, 'Narcisa', 'Tovar', 'No consumir gluten'),
(9, 'Encarnación', 'Montalbán', 'Cliente VIP'),
(10, 'Sabas', 'Catalá', 'Sin observaciones'),
(11, 'Manuel', 'Pedroza Gonzalez', 'Cliente VIP');

-- Tuplas en tabla Platillo
INSERT INTO Platillo (id_Platillo, Nombre, Importe)
VALUES
(1, 'Arroz a la marinera', 55925),
(2, 'Lomo saltado', 55588),
(3, 'Pasta carbonara', 38037),
(4, 'Cazuela de mariscos', 41422),
(5, 'Ensalada César', 47529),
(6, 'Pollo al curry', 32608),
(7, 'Hamburguesa BBQ', 24849),
(8, 'Sopa de tortilla', 21242),
(9, 'Tacos al pastor', 21524),
(10, 'Ravioles de ricotta', 35090),
(11, 'Caviar blanco', 850450);

-- Tuplas en tabla Bebida
INSERT INTO Bebida (id_Bebida, Nombre, Importe)
VALUES
(1, 'Jugo de mango', 7634),
(2, 'Limonada natural', 7773),
(3, 'Agua con gas', 10102),
(4, 'Cerveza artesanal', 11177),
(5, 'Café americano', 14641),
(6, 'Té helado', 11040),
(7, 'Jugo de naranja', 11019),
(8, 'Refresco de cola', 10837),
(9, 'Batido de fresa', 7837),
(10, 'Agua sin gas', 14805);

-- Tuplas en tabla Mesa
INSERT INTO Mesa (id_Mesa, numComensales, Ubicacion)
VALUES
(1, 4, 'Terraza'),
(2, 7, 'Segundo Piso'),
(3, 6, 'Terraza'),
(4, 5, 'Primer Piso'),
(5, 2, 'Primer Piso'),
(6, 6, 'Segundo Piso'),
(7, 4, 'Terraza'),
(8, 7, 'Segundo Piso'),
(9, 3, 'Segundo Piso'),
(10, 6, 'Segundo Piso');

-- Tuplas en tabla Mesero
INSERT INTO Mesero (id_Mesero, Nombre, Apellido1, Apellido2)
VALUES
(1, 'Daniel', 'Benítez', 'Ramírez'),
(2, 'Jefferson', 'Peña', 'Álvarez'),
(3, 'Ana', 'López', 'Córdoba'),
(4, 'Vicente', 'Motumbo', 'Sánchez'),
(5, 'Carlos', 'García', 'Moreno'),
(6, 'Lucía', 'Castillo', 'Rojas'),
(7, 'Pedro', 'Ortega', 'Vargas'),
(8, 'Sofía', 'Díaz', 'Pérez'),
(9, 'Andrés', 'Suárez', 'Herrera'),
(10, 'Valentina', 'Torres', 'Delgado');

-- Tuplas en tabla Factura
INSERT INTO Factura (id_Factura, Fecha_factura, id_Cliente, id_Platillo, id_Bebida, id_Mesa, id_Mesero)
VALUES
(1, '2024-01-10', 1, 1, 2, 3, 1),
(2, '2024-01-11', 2, 2, 3, 4, 2),
(3, '2024-01-12', 3, 3, 4, 5, 3),
(4, '2024-01-13', 4, 4, 5, 6, 4),
(5, '2024-01-14', 5, 5, 6, 7, 5),
(6, '2024-01-15', 6, 6, 7, 8, 6),
(7, '2024-01-16', 7, 7, 8, 9, 7),
(8, '2024-01-17', 8, 8, 9, 10, 8),
(9, '2024-01-18', 9, 9, 10, 1, 9),
(10, '2024-01-19', 10, 10, 1, 2, 10),
(11, '2024-01-20', 10, 8, 5, 6,7),
(12, '2024-01-21', 10, 6, 3, 10,7),
(13, '2024-01-22', 5, 11, 7, 10, 3),
(14, '2024-01-23', 11, 5, 3, 10, 1);
