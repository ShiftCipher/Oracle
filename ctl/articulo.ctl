load data
infile "Y:\Documents\Oracle\Planos\articulo.csv"
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
