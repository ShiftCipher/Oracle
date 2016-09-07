create table articulo(
  codart char(15) not null,
  desart varchar(70) not null,
  preart decimal(10,2),
  compart decimal(10,2),
  ivaart decimal(7,2) not null,
constraint pk_articulo primary key(codart)
);

create table vendedor(
  codven char(3) not null,
  nomven varchar(65) not null,
constraint pk_vendedor primary key (codven)
);

create table cliente(
  codcli char(12) not null,
  apecli varchar(60),
  nomcli varchar(60),
  dircli varchar(120),
constraint pk_cliente primary key(codcli)
);

create table vehiculo(
  codveh char(3) not null,
  desveh varchar(45) not null,
constraint pk_vehiculo primary key(codveh)
);

create table conductor(
  codcon char(3) not null,
  nomcon varchar(45),
constraint pk_conductor primary key(codcon)
);

create table ayudante(
  codayu char(3) not null,
  nomayu varchar(45) not null,
constraint pk_ayudante primary key(codayu)
);

create table cabecera(
  cabtrn char(3) not null,
  cabdoc char(8) not null,
  cabdat date not null,
  cabven char(3) not null,
  cabcli char(12) not null,
  constraint pk_cabecera primary key(cabtrn,cabdoc),
  constraint fk_cabecera_vendedor foreign key(cabven) references vendedor(codven),
  constraint fk_cabecera_cliente foreign key(cabcli) references cliente(codcli)
);

create table carguec(
  carcnum char(8) not null,
  carcfec date not null,
  carccar char(3),
  carcayu char(3) not null,
  carccon char(3),
  carcdat date,
  carcest char(1),
  constraint pk_carguec primary key(carcnum),
  constraint fk_carguec_vehiculo foreign key(carccar) references vehiculo(codveh),
  constraint fk_carguec_ayudante foreign key (carcayu) references ayudante(codayu),
  constraint fk_carguec_conductor foreign key (carccon) references conductor(codcon)
);

create table cargued(
  carnum char(8) not null,
  cardoc char(8) not null,
  cartrn char(3) not null,
  carest char(1) not null,
  constraint pk_cargued primary key(carnum,cardoc,cartrn,carest),
  constraint fk_cargued_carguec foreign key(carnum) references carguec(carcnum),
  constraint fk_cargued_cabecera foreign key(cardoc,cartrn) references cabecera(cabdoc,cabtrn)
);

create table detalle(
  dettrn char(3) not null,
  detdoc char(8) not null,
  detite char(15) not null,
  detcan decimal(8,2) not null,
  detpve decimal(8,2) not null,
  detpiv decimal(5,2)not null,
  detcos decimal(8,2),
  constraint pk_detalle primary key(dettrn,detdoc,detite),
  constraint fk_detalle_cabecera foreign key(dettrn,detdoc) references cabecera(cabtrn,cabdoc),
  constraint fk_detalle_articulo foreign key(detite) references articulo(codart)
);

create table artifin(
  id char(15) not null,
  barcode char(18) not null,
  description varchar(70) not null,
  utilities_by_package decimal(5,2) not null,
  packages_by_box decimal(5,2) not null,
  state char(1) not null,
  price_by_unity decimal(8,2) not null,
  price_by_box decimal(8,2) not null,
  iva decimal(5,2) not null,
  stock decimal(8,2) not null,
  box_cost decimal(8,2) not null,
  price_by_package decimal(8,2) not null,
  package_cost decimal(8,2) not null,
  unity_cost decimal(8,2) not null,
  date_ven date,
  stock_min decimal(8,2) not null,
  second_barcode char(13) not null,
  third_barcode char(18) not null
);
