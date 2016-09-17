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
  idart char(15) not null,
  barcode char(18),
  description varchar(70),
  quantity_by_package integer,
  packages_by_box integer,
  state char(1),
  price_by_unity float,
  price_by_box float,
  iva decimal(5,2),
  stock integer,
  box_cost float,
  price_by_package float,
  package_cost float,
  unity_cost float,
  date_ven date,
  stock_min float,
  second_barcode char(13),
  third_barcode char(18)
);

select quantity_by_package, packages_by_box
  from artifin
  where idart = '007702001062874';

select
  from artifin
  where idart = '007702001062874';

create or replace procedure mostrar()
  is
  begin
  packages = select artifin.packages_by_box, artifin.quantity_by_package
    from artifin;
  DBMS_OUTPUT.put_line('Packages : ' || packages);

create or replace procedure calcular(
  id IN varchar2,
  quantity IN number
)
is
  packages number;
  boxes number;
declare
  cursor cantidad is select quantity_by_package, packages_by_box
    from artifin
    where idart = id;
  v_packqua artifin.quantity_by_package%type;
  v_packbox artifin.packages_by_box%type;
  begin
    open cantidad;
    fetch cantidad into v_packqua, v_packbox;
    packages := v_packqua / quantity;
    boxes := v_packbox / packages;
    DBMS_OUTPUT.put_line('Packages : ' || packages);
    DBMS_OUTPUT.put_line('Boxes : ' || boxes);
  end;
/
