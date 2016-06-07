load data
infile "X:\Apps\Editorial\Reference\Oracle\csv\cargued.csv"
insert
into table cargued
fields terminated by ","
trailing nullcols
(carnum,
cardoc,
cartrn,
carest
)
