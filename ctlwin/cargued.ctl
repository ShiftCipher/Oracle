load data
infile "C:\Oracle\Data\csv\cargued.csv"
insert
into table cargued
fields terminated by ","
trailing nullcols
(carnum,
cardoc,
cartrn,
carest
)
