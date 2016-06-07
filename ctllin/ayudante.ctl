load data
infile "/home/oracle/database/oracle/csv/ayudante.csv"
insert
into table ayudante
fields terminated by ","
trailing nullcols
(codayu,
nomayu
)
