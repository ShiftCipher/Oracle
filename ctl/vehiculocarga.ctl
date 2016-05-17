load data
infile "Y:\Documents\Oracle\Planos\vehiculo.csv"
insert
into table vehiculo
fields terminated by ","
trailing nullcols
(codveh,
desveh
)
