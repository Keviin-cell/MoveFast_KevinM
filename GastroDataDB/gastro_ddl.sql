-- Se crea tabla Cliente
CREATE TABLE Cliente(
	id_Cliente INTEGER PRIMARY KEY,
	Nombre VARCHAR(45) NOT NULL,
	Apellido VARCHAR(45) NOT NULL,
	Observaciones VARCHAR(100) DEFAULT 'Sin observaciones'
);

-- Se crea tabla Platillo
CREATE TABLE Platillo(
	id_Platillo INTEGER PRIMARY KEY,
	Nombre VARCHAR(45) NOT NULL,
	Importe INTEGER NOT NULL CHECK (Importe >= 0)
);

-- Se crea tabla Bebida
CREATE TABLE Bebida(
	id_Bebida INTEGER PRIMARY KEY,
	Nombre VARCHAR(45) NOT NULL,
	Importe INTEGER NOT NULL CHECK (Importe >= 0)
);

-- Se crea tabla Mesa
CREATE TABLE Mesa(
	id_Mesa INTEGER PRIMARY KEY,
	numComensales INTEGER DEFAULT 0,
	Ubicacion VARCHAR(45) NOT NULL
);

-- Se crea tabla Mesero
CREATE TABLE Mesero(
	id_Mesero INTEGER PRIMARY KEY,
	Nombre VARCHAR(45) NOT NULL,
	Apellido1 VARCHAR(45) NOT NULL,
	Apellido2 VARCHAR(45) NOT NULL
);

-- Se crea tabla Factura
CREATE TABLE Factura(
	id_Factura INTEGER PRIMARY KEY,
	Fecha_factura DATE NOT NULL,
	id_Cliente INTEGER,
	FOREIGN KEY (id_Cliente) REFERENCES Cliente(id_Cliente) ON DELETE CASCADE,
	
	id_Platillo INTEGER,
	FOREIGN KEY (id_Platillo) REFERENCES Platillo(id_Platillo),
	
	id_Bebida INTEGER,
	FOREIGN KEY (id_Bebida) REFERENCES Bebida(id_Bebida),
	
	id_Mesa INTEGER,
	FOREIGN KEY (id_Mesa) REFERENCES Mesa(id_Mesa),
	
	id_Mesero INTEGER,
	FOREIGN KEY (id_Mesero) REFERENCES Mesero(id_Mesero)
);
