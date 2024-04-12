DDL_QUERY =  '''
CREATE TABLE Categoria (
    idcategoria SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    estado BOOLEAN
);

CREATE TABLE Articulo (
    idarticulo SERIAL PRIMARY KEY,
    idcategoria INT NOT NULL,
    codigo VARCHAR(50) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    precio_venta NUMERIC(11, 2) NOT NULL,
    stock INT NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    imagen VARCHAR(20) NOT NULL,
    estado BOOLEAN NOT NULL,
    FOREIGN KEY (idcategoria) REFERENCES Categoria(idcategoria)
);

CREATE TABLE Rol (
    idrol SERIAL PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    estado BOOLEAN
);

CREATE TABLE Usuario (
    idusuario SERIAL PRIMARY KEY,
    idrol INT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    tipo_documento VARCHAR(20),
    num_documento VARCHAR(20),
    direccion VARCHAR(70),
    telefono VARCHAR(20),
    email VARCHAR(50),
    clave BYTEA,
    estado BOOLEAN,
    FOREIGN KEY (idrol) REFERENCES Rol(idrol)
);

CREATE TABLE Persona (
    idpersona SERIAL PRIMARY KEY,
    tipo_persona VARCHAR(20),
    nombre VARCHAR(100) NOT NULL,
    tipo_documento VARCHAR(20),
    num_documento VARCHAR(20),
    direccion VARCHAR(70),
    telefono VARCHAR(20),
    email VARCHAR(50)
);

CREATE TABLE Ingreso (
    idingreso SERIAL PRIMARY KEY,
    idproveedor INT NOT NULL,
    idusuario INT NOT NULL,
    tipo_comprobante VARCHAR(20),
    serie_comprobante VARCHAR(7),
    num_comprobante VARCHAR(10),
    fecha TIMESTAMP NOT NULL,
    impuesto NUMERIC(4, 2),
    total NUMERIC(11, 2),
    estado VARCHAR(20),
    FOREIGN KEY (idproveedor) REFERENCES Persona(idpersona), 
    FOREIGN KEY (idusuario) REFERENCES Usuario(idusuario)
);

CREATE TABLE Detalle_Ingreso (
    iddetalle_ingreso SERIAL PRIMARY KEY,
    idingreso INT NOT NULL,
    idarticulo INT NOT NULL,
    cantidad INT NOT NULL,
    precio NUMERIC(11, 2) NOT NULL,
    FOREIGN KEY (idarticulo) REFERENCES Articulo(idarticulo),
    FOREIGN KEY (idingreso) REFERENCES Ingreso(idingreso)
);

CREATE TABLE Venta (
    idventa SERIAL PRIMARY KEY,
    idcliente INT NOT NULL,
    idusuario INT NOT NULL,
    tipo_comprobante VARCHAR(20),
    serie_comprobante VARCHAR(7),
    num_comprobante VARCHAR(10),
    fecha TIMESTAMP NOT NULL,
    impuesto NUMERIC(4, 2),
    total NUMERIC(11, 2),
    estado VARCHAR(20),
    FOREIGN KEY (idcliente) REFERENCES Persona(idpersona),
    FOREIGN KEY (idusuario) REFERENCES Usuario(idusuario)
);

CREATE TABLE Detalle_venta (
    iddetalle_venta SERIAL PRIMARY KEY,
    idventa INT NOT NULL,
    idarticulo INT NOT NULL,
    cantidad INT,
    precio NUMERIC(11, 2),
    descuento NUMERIC(11, 2),
    FOREIGN KEY (idventa) REFERENCES Venta(idventa),
    FOREIGN KEY (idarticulo) REFERENCES Articulo(idarticulo)
); '''