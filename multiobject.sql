create or replace type Venta_Diaria as object(
dia date,
venta number(12, 2);
);
create or replace type Ventas_Diarias as varray(366) of Venta_Diaria;

create or replace type Venta_Semana as object(
semana integer,
venta number(12, 2);
);
create or replace type Ventas_Semanales as varray(53) of Venta_Semana;

create or replace type Venta_Mes as object(
mes integer,
venta number(12, 2);
);
create or replace type Ventas_Mensuales as varray(12) of Venta_Mes;

create or replace type Venta_Bimestre as object(
bimestre integer,
venta number(12, 2);
);
create or replace type Ventas_Bimestrales as varray(6) of Venta_Bimestre;

create or replace type Venta_Trimestre as object(
trimestre integer,
venta number(12, 2);
);
create or replace type Ventas_Trimestrales as varray(4) of Venta_Trimestre;

create or replace type Venta_Semestre as object(
semestre integer,
venta number(12, 2);
);
create or replace type Ventas_Semestrales as varray(2) of Venta_Semestre;

create table BI_Ventas(
idven varchar(11) primary key,
nomven varchar(75) not null,
total_venta_dia Ventas_Diarias,
total_venta_semana Ventas_Semanales,
total_venta_mes Ventas_Mensuales,
total_venta_bimestre Ventas_Bimestrales,
total_venta_trimestre Ventas_Trimestrales,
total_venta_semestre Ventas_Semestrales,
total_venta_anual number(12, 2)
);
