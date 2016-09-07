load data
infile "/home/oracle/database/oracle/csv/vehiculo.csv"
insert
into table vehiculo
fields terminated by ","
trailing nullcols
(codveh,
desveh
)
