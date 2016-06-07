load data
infile "C:\Oracle\Data\csv\vehiculo.csv"
insert
into table vehiculo
fields terminated by ","
trailing nullcols
(codveh,
desveh
)
