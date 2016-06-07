load data
infile "X:\Apps\Editorial\Reference\Oracle\csv\vehiculo.csv"
insert
into table vehiculo
fields terminated by ","
trailing nullcols
(codveh,
desveh
)
