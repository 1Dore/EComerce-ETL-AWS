-- para una base de datos en mysql

create table Categoria (
    idcategoria int not null auto_increment primary key,
    nombre varchar(50) not null,
    descripcion varchar(255) not null,
    estado bit,
);

create table Articulo (

    idarticulo int not null auto_increment primary key,
    idcategoria int not null,
    codigo varchar(50) not null,
    nombre varchar(100) not null,
    precio_venta decimal(11, 2) not null,
    stock int not null,
    descripcion varchar(255) not null,
    imagen varchar(20) not null,
    estado bit not null,
    foreign key (idcategoria) references Categoria(idcategoria)
);

create table Rol (

    idrol int not null auto_increment primary key,
    nombre varchar(30) not null,
    descripcion varchar(255) not null,
    estado bit

);

create table Usuario (

    idusuario int not null auto_increment primary key,
    idrol int not null,
    nombre varchar(100) not null,
    tipo_documento varchar(20),
    num_documento varchar(20),
    direccion varchar(70),
    telefono varchar(20),
    email varchar(50),
    clave varbinary(max_length),
    estado bit,
    foreign key (idrol) references Rol(idrol)

);

create table Persona (

    idpersona int not null auto_increment primary key,
    tipo_persona varchar(20),
    nombre varchar(100) not null,
    tipo_documento varchar(20),
    num_documento varchar(20),
    direccion varchar(70),
    telefono varchar(20),
    email varchar(50)

);

create table Ingreso (

    idingreso int not null auto_increment primary key,
    idproveedor int not null,
    idusuario int not null,
    tipo_comprobante varchar(20),
    serie_comprobante varchar(7),
    num_comprobante varchar(10),
    fecha DateTime not null,
    impuesto Decimal(4,2),
    total Decimal(11,2),
    estado varchar(20),
    foreign key (idproveedor) references Persona(idpersona), 
    foreign key (idusuario) references Usuario(idusuario)
);

create table Detalle_Ingreso (

    iddetalle_ingreso int not null auto_increment primary key,
    idingreso int not null,
    idarticulo int not null,
    cantidad int not null,
    precio decimal(11, 2) not null,
    foreign key (idarticulo) references Articulo(idarticulo),
    foreign key (idingreso) references Ingreso(idingreso)
);

create table Venta (

    idventa int not null auto_increment primary key,
    idcliente int not null,
    idusuario int not null,
    tipo_comprobante varchar(20),
    serie_comprobante varchar(7),
    num_comprobante varchar(10),
    fecha DateTime not null,
    impuesto Decimal(4,2),
    total Decimal(11,2),
    estado varchar(20),
    foreign key (idcliente) references Persona(idpersona),
    foreign key (idusuario) references Usuario(idusuario)

);

create table Detalle_venta (

    iddetalle_venta int not null auto_increment primary key,
    idventa int not null,
    idarticulo int not null,
    cantidad int,
    precio decimal(11,2),
    descuento decimal(11,2),
    foreign key (idventa) references Venta(idventa),
    foreign key (idarticulo) references Articulo(idarticulo)

);