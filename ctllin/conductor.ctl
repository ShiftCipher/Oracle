load data
infile "/home/oracle/database/oracle/csv/conductor.csv"
insert
into table conductor
fields terminated by ","
trailing nullcols
(codcon,
nomcon
)
