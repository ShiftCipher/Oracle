load data
infile "/home/oracle/database/oracle/csv/detalle.csv"
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
