-- Se crea tabla Cliente
CREATE TABLE Cliente(
	cID INTEGER PRIMARY KEY,
	cNombres VARCHAR(100) NOT NULL,
	cApellidos VARCHAR(100) NOT NULL,
	cTelefono VARCHAR(50) NOT NULL
);

-- Se crea tabla Sucursales
CREATE TABLE Sucursales(
	sID SERIAL PRIMARY KEY,
	sNombre VARCHAR(100) NOT NULL,
	sCiudad VARCHAR(100) NOT NULL,
	sUbicacion VARCHAR(100) NOT NULL
);


-- Se crea tabla Vehiculos
CREATE TABLE Vehiculos(
	vMatricula VARCHAR(15) PRIMARY KEY,
	vSucursalID INTEGER NOT NULL,
	vEstado VARCHAR(20) DEFAULT 'Disponible',
	vModelo INTEGER CHECK (vModelo BETWEEN 2000 AND 2025),
	vVecesAlquilado INTEGER DEFAULT 0 CHECK (vVecesAlquilado >= 0),
	FOREIGN KEY(vSucursalID) REFERENCES Sucursales(sID) ON UPDATE CASCADE
);


-- Se crea tabla Alquileres
CREATE TABLE Alquileres(
    aID SERIAL PRIMARY KEY,
    aFechaInicial DATE NOT NULL,
	aFechaFinal DATE,
    aCliente INTEGER NOT NULL,
    aVehiculo VARCHAR(15) NOT NULL,
    FOREIGN KEY(aCliente) REFERENCES Cliente(cID) ON DELETE CASCADE,
    FOREIGN KEY(aVehiculo) REFERENCES Vehiculos(vMatricula)
);

-- Se crea tabla Pagos
CREATE TABLE Pagos(
	pID SERIAL PRIMARY KEY,
	pCliente INTEGER NOT NULL,
	pMonto DECIMAL(10,2) NOT NULL,
	FOREIGN KEY(pCliente) REFERENCES Cliente(cID) ON DELETE CASCADE
);
