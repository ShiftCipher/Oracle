load data
infile "/home/oracle/database/oracle/csv/articulo.csv"
insert
into table articulo
fields terminated by ","
trailing nullcols
(codart,
desart,
preart,
compart,
ivaart
)
