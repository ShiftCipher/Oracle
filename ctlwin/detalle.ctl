load data
infile "C:\Oracle\Data\csv\detalle.csv"
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
