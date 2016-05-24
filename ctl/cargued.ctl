load data
infile "/home/oracle/database/oracle/csv/cargued.csv"
insert
into table cargued
fields terminated by ","
trailing nullcols
(carnum,
cardoc,
cartrn,
carest
)
