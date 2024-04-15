DDL_QUERY = '''
-- base de datos hecha en mysql

create table dim_Tiempo (

    idfecha int primary key,
    fecha_completa DateTime,
    fecha_dia_semana int,
    fecha_dia_mes int,
    dia_nombre varchar(10),
    semana_fin_bandera varchar(13), -- entre semana, fin de semana
    semana_ano int,
    dia_semana_inicio datetime,
    mes int,
    mes_nombre varchar(10),
    cuarto int,
    mes_fiscal int,
    cuarto_fiscal int,
    ano_fiscal int,
    mes_fin_bandera varchar(13) -- fin de mes, mes

);

CREATE TABLE dim_Usuario (

    idusuario int primary key,
    idrol int,
    nombre varchar(100),
    tipo_documento varchar(20),
    num_documento varchar(20),
    estado bit,
    rol_nombre varchar(30)

);

CREATE TABLE dim_Articulo (

    idarticulo int primary key,
    nombre_categoria varchar(30),
    codigo varchar(50),
    nombre varchar(100),
    precio_venta decimal(11,2),
    stock INT

);

CREATE TABLE dim_Persona (

    idpersona int primary key,
    tipo_persona varchar(20),
    nombre varchar(100),
    tipo_documento varchar(20),
    num_documento varchar(20),
    direccion varchar(50),
    telefono varchar(15),
    email varchar(100)
    
);


Create Table fact_Ventas (

    idusuario int,
    idarticulo int,
    idpersona int,
    idventa int,
    idfecha int,
    precio decimal(11,2),
    cantidad int,
    descuento decimal(11,2),
    impuesto decimal(4,2),
    total decimal(11, 2),
    FOREIGN key (idusuario) REFERENCES Usuario (idusuario),
    Foreign key (idpersona) REFERENCES Persona (idpersona),
    Foreign key (idarticulo) REFERENCES Articulo (idarticulo),
    Foreign key (idfecha) REFERENCES Tiempo (idfecha)
);
);'''