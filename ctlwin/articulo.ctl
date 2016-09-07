load data
infile "C:\Oracle\Data\csv\articulo.csv"
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
