load data
infile "Y:\Documents\Oracle\Planos\detalle.csv"
insert
into table detalle
fields terminated by ","
trailing nullcols
(dettrn,
detdoc,
detite,
detcan,
detpve,
detpiv,
detcos
)
