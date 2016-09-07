load data
infile "/home/oracle/database/oracle/csv/vendedor.csv"
insert
into table vendedor
fields terminated by ","
trailing nullcols
(codven,
nomven
)
