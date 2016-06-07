load data
infile "X:\Apps\Editorial\Reference\Oracle\csv\articulo.csv"
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
